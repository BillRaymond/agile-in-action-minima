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
{% assign photosrc = detail.guest-photo %}
{% assign phototarget = detail.guest-photo | remove_last: '/' %}
magick convert ..{{detail.guest-photo}} `` ` ``# the guest image`` ` `` \\\\
    -resize 250x250^ `` ` ``# resize the image, but keep aspect ratio`` ` `` \\\\
    -gravity center \\\\
    -background transparent \\\\
    -extent 250x250 `` ` ``# Crop to a perfect square`` ` `` \\\\
    -bordercolor white `` ` ``# Define the border color`` ` `` \\\\
    -border 6 `` ` ``# Create a border around the image`` ` `` \\\\
    \\\( +clone -background black -shadow 60x5+6+6 \\\) \\\\
    +swap -background none -layers merge +repage `` ` ``# merge the layers`` ` `` \\\\
    ../uploads/wf-guest-images-fi/{{detail.guest-photo | split: '/' | last}} `` ` ``# save the guest image`` ` ``
{% endfor %}
{% endfor %}

