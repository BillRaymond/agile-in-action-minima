---
layout: shell
---
#!/bin/bash
# -e Exit immediately if a command exits with a non-zero status
# -x Echo all the commands as they run, not just echos
set -e -x&#10;

{%- comment -%} 
    note: make sure to run chmod +x script-name in the final solution.sh
    purpose: Create guest images for reuse on featured images
    Resize and crop the guest image so it is square, has a border, and has a shadow
    
    Dependencies
    1. ImageMagick
    2. There is a root folder structure like this: /uploads/wf-guest-images-fi
{% endcomment %}

{%- comment -%} only get posts where there are guest details (guest photos) {%- endcomment -%}
    {%- assign validPosts = site.posts 
        | where_exp: 'post', 'post.guest-details != nil' -%}

{%- comment -%} Determines whether to rebuild all featured images or just recents {%- endcomment -%}
    {%- assign recreateAllFi = site.data.configs.wfRecreateGuestImages -%}

{%- comment -%} Get the list of appropriate images to convert {%- endcomment -%}
    {%- if recreateAllFi == true -%}
            {%- assign posts = validPosts -%}
    {%- else -%}
            {%- assign posts = validPosts 
                | where_exp: 'post', 'post.date >= site.time' -%}
    {%- endif -%}

{%- comment -%}
    Get the appropriate posts to process (posts contain the list of guest photos)
    For testing purposes, add a limit like this: for post in posts limit: 1
{%- endcomment -%}
{%- for post in posts -%}
{%- for detail in post.guest-details -%}

{%- comment -%}
    ########## Define the photoTarget
    Original photo will look something like this:
        /uploads/guest-image.jpeg
{%- endcomment -%}
{%- assign photoSource = detail.guest-photo | prepend: '..' -%}
echo "photoSource: {{photoSource}}"&#10;&#10;
{%- assign photoTarget = photoSource -%}
echo "Original photoTarget: {{photoTarget}}"&#10;&#10;

{%- comment -%}
    Set the target folder for the guest photo
    The folder will look something like this
    ../uploads/wf-guest-images-fi/guest-image.jpeg
{%- endcomment -%}
{%- assign photoTarget = photoTarget 
    | replace: '/uploads/', '/uploads/wf-guest-images-fi/'
-%}
echo "photoTarget with new url: {{photoTarget}}"&#10;

{%- comment -%}
    Set the target file type as png
    The resulting structure should look like this
    ../uploads/wf-guest-images-fi/guest-image.png
{%- endcomment -%}
{%- assign photoTargetExt = photoTarget | split: '.' | last -%}
echo "photoTargetExt: {{photoTargetExt}}"&#10;
{%- assign photoTargetExtSize = photoTarget.size | minus: photoTargetExt.size -%}
echo "photoTargetExtSize: {{photoTargetExtSize}}"&#10;
{%- assign photoTarget = photoTarget 
    | slice: 0, photoTargetExtSize
    | append: 'png'
-%}
echo "photoSource: {{photoSource}}"&#10;
echo "photoTarget: {{photoTarget}}"&#10;

{%- comment -%}
    ########## Start guest photo conversion process
    Convert the original source file to png
    Resize the image, while centering content
    Add a border
    Save to the photoTarget filename and folder
{%-endcomment-%}
echo "* START Converting guest photo: {{photoSource}}"
convert {{photoSource}} &#96;# load the guest's photo&#96;&#92;
    -resize 250x250^ &#96;# load template background image&#96;&#92;
    -gravity center &#96;# Set the center of gravity for the photo&#96;&#92;
    -background transparent &#96;# Background should be transparent&#96;&#92;
    -extent 250x250 &#96;# Crop the photo to a perfect square&#96;&#92;
    -bordercolor white &#96;# Define a border for the photo&#96;&#92;
    -border 6 &#96;# Create a border around the photo&#96;&#92;
    \( +clone -background black -shadow 60x5+6+6 \) &#96;# Create a shadow under the photo&#96;&#92;
    +swap -background none -layers merge +repage &#96;# Merge the photo and shadow layers&#96;&#92;
    {{photoTarget}} &#96;# Save the guest photo&#96;&#92;&#10;
echo "* FINISH converted guest photo to: {{photoTarget}}"
{%- endfor -%}
{%- endfor -%}

