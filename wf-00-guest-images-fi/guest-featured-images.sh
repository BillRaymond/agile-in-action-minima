---
layout: shell
---
{% comment %} note: make sure to run chmod +x script-name in the final solution.sh {% endcomment %}
{% comment %} create guest images for reuse on featured images {% endcomment %}
{% comment %} Resize and crop the guest image so it is square, has a border, and has a shadow {% endcomment %}
{% comment %} Make sure you have a root folder structure like this: /uploads/wf-guest-images-fi {% endcomment %}
{%- assign posts = site.posts | where_exp: 'post', 'post.guest-details !=nil' -%} 

{% for post in posts %}
{% for detail in post.guest-details %}
{% comment %}
    Set the location of the source image
        1. pre-pend with two dots ".." 
           since so the shell goes a level above this folder
{% endcomment %}
{% assign photoSource = detail.guest-photo %}

{% comment %}
    Set the target location for the final file
        1. Get the filename of the source photo
        2. Remove the file extension
        3. Add the png extension
        4. Pre-pend with the location to store the image
{% endcomment %} 
{% assign photoTarget = detail.guest-photo 
    | split: '/' | last 
    | split: '.' | first
    | append: '.png' 
    | prepend: '../uploads/wf-guest-images-fi/'
    %}


{% comment %} *** START guest image conversion process *** {% endcomment%}
echo "Converting guest image: {{photoSource}}"
magick convert ..{{photoSource}} `` ` ``# the guest image`` ` `` \\\\
    -resize 250x250^ `` ` ``# resize the image, but keep aspect ratio`` ` `` \\\\
    -gravity center \\\\
    -background transparent \\\\
    -extent 250x250 `` ` ``# Crop to a perfect square`` ` `` \\\\
    -bordercolor white `` ` ``# Define the border color`` ` `` \\\\
    -border 6 `` ` ``# Create a border around the image`` ` `` \\\\
    \\\( +clone -background black -shadow 60x5+6+6 \\\) \\\\
    +swap -background none -layers merge +repage `` ` ``# merge the layers`` ` `` \\\\
    {{photoTarget}} `` ` ``# save the guest image`` ` ``
echo "converted guest image to: {{photoTarget}}"
{% endfor %}
{% endfor %}

