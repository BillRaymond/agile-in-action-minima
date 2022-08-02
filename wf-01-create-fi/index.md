---
layout: page
title: Create featured images
---
The code contained in this folder will read guest images and perform various steps to create a featured image

1. Open a featured image template
2. Add photos
3. Add text
4. Save a version with and without a play button

## Dependencies
* Imagemagick (should be in the dockerfile)
* Jekyll 4.x (untested with 3.x, but could work)

## Open the script for testing
<a href="{{- "/wf-00-guest-images-fi/guest-featured-images.sh" | relative_url -}}" target="blank" >Open...</a>


## Code sample
The following code may change, but the general idea is to use Imagemagic to resize, crop, border, and shadow guest images
```
# note: make sure to run chmod +x script-name in the final solution.sh

# The following code is for four guests. The code will adjust for one, two, three, or four (no more than 4)
magick convert sc-template.png `# load template background image` \
    -page +972+448 sc-play.png `# load play icon image` \
    \( face.png -resize 150x150 -set page +315+41 \) \
    \( face.png -resize 150x150 -set page +315+193 \) \
    \( face.png -resize 150x150 -set page +315+346 \) \
    \( face.png -resize 150x150 -set page +315+497 \) \
    -layers flatten `# merge the template, play, and guests layers` \
    -font './share-card-creator/fonts/ProximaNovaA-Bold.ttf' `# load the font` \
    -fill '#f49f1c' -background none `# The podcast title dos not have a background` \
    -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template` \
    -geometry +550+46 `# Set the x and y position for the PODCAST text` \
    -composite `# Add text to the image` \
    -fill white -background none `# The title for the podcast does not have a background` \
    -size 580x340 caption:'Outcome-driven design and team behaviors' `# Podcast title as it appears on the website` \
    -geometry +550+96 `# Set the x and y location for the podcast title` \
    -composite `# Add the podcast's title to the image` \
    -fill white -background none `# the guest names do not have a background` \
    -size 405x195 caption:'with A Cool Person and Another Cool Person' `# List the guest names for the podcast` \
    -geometry +550+446 `# Set the x and y position of the guest names` \
    -composite `# Add guest names to the image` \
    sc.png
```

## Test code
This section can be used to debug locally before adjusting the shell script.
{% assign posts = site.posts | where_exp: 'post', 'post.guest-details !=nil' %}

{% for post in posts %}
    Title: {{post.title}}
    {% for detail in post.guest-details %}
        guest-photo: {{detail.guest-photo | relative_url }}
        filename: {{detail.guest-photo | split: '/' | last }}
    {% endfor %}
{% endfor %}