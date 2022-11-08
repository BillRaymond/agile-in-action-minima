---
layout: shell
---
#!/bin/bash
# -e Exit immediately if a command exits with a non-zero status
# -x Echo all the commands as they run, not just echos
set -e -x&#10;

{%- comment -%} note: make sure to run chmod +x script-name in the final solution.sh {% endcomment %}
{%- comment -%} create guest images for reuse on featured images {% endcomment %}
{%- comment -%} Resize and crop the guest image so it is square, has a border, and has a shadow {% endcomment %}
{%- comment -%} Make sure you have a root folder structure like this: /uploads/wf-guest-images-fi {% endcomment %}

{%- comment -%} only get posts where there are guest details (guest photos) {%- endcomment -%}
    {%- assign validPosts = site.posts 
        | where_exp: 'post', 'post.guest-details != nil' -%}

{%- comment -%} decide what posts to update (all or current date and future date) {%- endcomment -%}
    {%- if recreateAllFi == true -%}
            {%- assign posts = validPosts -%}
    {%- else -%}
            {%- assign posts = validPosts 
                | where_exp: 'post', 'post.date >= site.time' -%}
    {%- endif -%}

{%- for post in posts -%}
{%- for detail in post.guest-details -%}
{%- comment -%}
    Set the location of the source image
        1. pre-pend with two dots ".." 
           since so the shell goes a level above this folder
{%- endcomment -%}
{%- assign photoSource = detail.guest-photo -%}

{%- comment -%}
    Set the target location for the final file
        1. Get the filename of the source photo
        2. Remove the file extension
        3. Add the png extension
        4. Pre-pend with the location to store the image
{%- endcomment -%} 
{%- assign photoTarget = detail.guest-photo 
    | split: '/' | last 
    | split: '.' | first
    | append: '.png' 
    | prepend: '../uploads/wf-guest-images-fi/'
-%}

{%- comment -%} *** START guest photo conversion process *** {%-endcomment-%}
echo "* START Converting guest photo: {{photoSource}}"
magick convert ..{{photoSource}} &#96;# load the guest's photo&#96;&#92;
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

