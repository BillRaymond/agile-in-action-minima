---
layout: page
title: Workflow for featured images
---
The code contained in this folder will read uploaded guest images and perform various steps to prepare for creating custom featured images for the website. Some of the functions include:

1. Resize and crop guest images so they are a perfect square
2. Add a border
3. Add a shadow
4. Save the image to a location for reuse

## Dependencies
* Imagemagick (should be in the dockerfile)
* Jekyll 4.x (untested with 3.x, but could work)

## Open the script for testing
<a href="{{- "/wf-00-guest-images-fi/guest-featured-images.sh" | relative_url -}}" target="blank" >Open...</a>


## Code sample
The following code may change, but the general idea is to use Imagemagic to resize, crop, border, and shadow guest images
```
# note: make sure to run chmod +x script-name in the final solution.sh

# Resize and crop the guest image so it is square, has a border, and has a shadow
magick convert ../face.jpg `# the guest image` \
    -resize 250x250^ `# resize the image, but keep aspect ratio` \
    -gravity center \
    -background transparent \
    -extent 250x250 `# Crop to a perfect square` \
    -bordercolor white `# Define the border color` \
    -border 6 `# Create a border around the image` \
    \( +clone -background black -shadow 60x5+6+6 \) \
    +swap -background none -layers merge +repage \
    ../uploads/wf-guest-images-fi/face.png
exit
```

## Test code
This section can be used to debug locally before adjusting the shell script
{%- assign posts = site.posts | where_exp: 'post', 'post.guest-details !=nil' -%}

{% for post in posts %}
    Title: {{post.title}}
    {% for detail in post.guest-details %}
        guest-photo: {{detail.guest-photo | relative_url }}
        filename: {{detail.guest-photo | split: '/' | last }}
    {% endfor %}
{% endfor %}