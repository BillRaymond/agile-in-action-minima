---
layout: shell
---
{% comment %}
{%- assign posts = site.posts | where_exp: "item", "item.title == 'How team self-selection helps people excel'" -%}
note: make sure to run chmod +x script-name in the final solution.sh
{% endcomment %}
{%- assign posts = site.posts | where_exp: 'post', 'post.guest-details !=nil' -%} 
    {%- for post in posts limit: 10 -%}
        magick convert sc-template.png &#96;# load template background image&#96;&#92;&#10;
        {%- assign numGuests = post.guest-details.size -%}
        {%- assign imagePrepend = "&#92;( " -%}
        {%- assign imageAppend = " &#92;) &#96;# load a guest photo&#96;&#92;" -%}
        {%- for guestDetail in post.guest-details -%}
            {%- assign guestPhoto = guestDetail.guest-photo | split: '/' | last | prepend: "../uploads/wf-guest-images-fi/" -%}
            {%- assign guestIndex = numGuests | minus: 1 -%}
            {%- assign valueIndex = forloop.index | minus: 1 -%}
            {%- assign photoPlacement = site.data.wf-data-fi[guestIndex].items[valueIndex].value -%}
            {%- assign imageMagickImage = guestPhoto | prepend: imagePrepend | append: " " | append: photoPlacement | append: imageAppend -%}
            {{imageMagickImage}}&#10;
        {%- endfor -%}
        -layers flatten &#96;# merge the template and guest photos&#96;&#92;
        -font &#39;fonts/ProximaNovaA-Bold.ttf&#39; &#96;# load the font&#96;&#92;
        -fill &#39;#f49f1c&#39; -background none &#96;# The podcast title dos not have a background&#96;&#92;
        -size 580x40 caption:&#39;PODCAST&#39; &#96;# Add the word PODCAST to the template&#96;&#92;
        -geometry +550+46 &#96;# Set the x and y position for the PODCAST text&#96;&#92;
        -composite &#96;# Add text to the image&#96;&#92;
        -fill white -background none &#96;# The title for the podcast does not have a background&#96;&#92;
        -size 580x340 caption:&#39;{{post.title | escape}}&#39; &#96;# Podcast title as it appears on the website&#96;&#92;
        -geometry +550+96 &#96;# Set the x and y location for the podcast title&#96;&#92;
        -composite &#96;# Add the podcast&#39;s title to the image&#96;&#92;
        -fill white -background none &#96;# the guest names do not have a background&#96;&#92;
        -size 405x195 caption:&#39;with A Cool Person and Another Cool Person&#39; &#96;# List the guest names for the podcast&#96;&#92;
        -geometry +550+446 &#96;# Set the x and y position of the guest names&#96;&#92;
        -composite &#96;# Add guest names to the image&#96;&#92;
        +write ../uploads/wf-featured-images/{{post.path | split: '/' | last | split: '.md' | first | append: '.png'}} &#92;
        -page +972+448 sc-play.png &#96;# load play icon image&#96;&#92;
        -layers flatten &#92;
        ../uploads/wf-featured-images/{{post.path | split: '/' | last | split: '.md' | first | append: '-no-play' | append: '.png'}}
{% endfor %}
