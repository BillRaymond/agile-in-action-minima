---
layout: page
---
## Workflow for featured images
The code contained in this folder will read uploaded guest images and perform various steps to prepare for creating custom featured images for the website. Some of the functions include:

1. Resize and crop guest images so they are a perfect square
2. Add a border
3. Add a shadow
4. Save the image to a location for reuse

## System dependencies
* Imagemagick (should be in the dockerfile)
* Jekyll 4.x (untested with 3.x, but could work)

## File dependencies
* A folder in the root Jekyll `_data` folder
* A file in the root Jekyll `_data` folder with the name `configs.yml`

## Configuration settings
The `_data/configs.yml` file must exist and contain one of the two entries:

```
wfRecreateGuestImages: true
or
wfRecreateGuestImages: false
```

The setting `wfRecreateGuestImages` is to determine how many guest images to generate.

If you set this option to `true`:
* The script will re-create all the guest images from every post
* The benefit of using this options is when you:
    * Want to build all the images for the first time
    * Want to re-build the images because of a change to the script
    * Want to test the script's functionality on a lot of images
* Whether you use true or false, if the image(s) already exist, the script will overwrite them

If you set this option to `false`:
* The script will only geneate guest images that belong to today's post or in the future
* This should be the default as you should not re-create images at every build
* The benefit of this option is when you:
    * Only want to create guest images for current or new posts
    * Want to optimize the build time for your site
* Whether you use true or false, if the image(s) already exist, the script will overwrite them

## To test the code
1. Run `bundle exec jekyll build --livereload --future`
2. A new script file is created in `/_site/wf-00-guest-images-fi`
3. From the root Jekyll folder, run `sh _site/wf-00-guest-images-fi.sh`
4. Once complete, check the `/uploads/wf-guest-images-fi` folder and the new or updated files should exit there

## To update the code, 

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