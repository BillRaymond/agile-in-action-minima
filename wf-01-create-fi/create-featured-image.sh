---
layout: shell
---
#!/bin/bash
# -e Exit immediately if a command exits with a non-zero status
# -x Echo all the commands as they run, not just echos
set -e -x

{% comment %}
    note: make sure to run chmod +x script-name in the final solution.sh
    TODO: Write up what the code does
{% endcomment %}

{%- comment -%} only get posts where there are guest details {%- endcomment -%}
{%- assign posts = site.posts | where_exp: 'post', 'post.guest-details !=nil' -%} 
{%- comment -%} ** STEP 1: start ImageMagick {%- endcomment -%}
{%- for post in posts limit: 1 -%}
magick convert sc-template.png &#96;# load template background image&#96;&#92;&#10;
{%- comment -%} add each guest imagie to the imagemagick line with size and location {%- endcomment -%}

{%- comment -%} ** STEP 2: Size and place images {%- endcomment -%}
{%- for detail in post.guest-details -%}
{%- comment -%} Get the zero-based index for number of guests and current loop index {%- endcomment -%}
{%- assign numGuests = post.guest-details.size | minus: 1 -%}
{%- assign currGuestIndex = forloop.index | minus: 1 -%}
{%- comment -%} imagemagick uses slashes, parens, and backticks. Define those here {%- endcomment -%}
{%- assign imagePrepend = "&#92;( " -%}
{%- assign imageAppend = " &#92;) &#96;# load a guest photo&#96;&#92;" -%}

{%- comment -%} define the size and placement for the images {%- endcomment -%}
{%- assign photoPlacement = site.data.wf-data-fi[numGuests].items[currGuestIndex].value -%}
{%- comment -%} all photos must end in png and be located in a specific folder {%- endcomment -%}
{%- assign guestPhoto = detail.guest-photo | split: '/' | last | split: '.' | first | append: '.png' | prepend: '../uploads/wf-guest-images-fi/' -%}
{%- assign imageMagickImage = guestPhoto | prepend: imagePrepend | append: " " | append: photoPlacement | append: imageAppend -%}
{{imageMagickImage}}&#10;
{%- comment -%} add each guest image to the featured image {%- endcomment -%}
{%- endfor -%}
{%- comment -%} ** STEP 3: Merge layers and  {%- endcomment -%}
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
-fill white -background none &#96;# the guest names do not have a background&#96;&#92;&#10;


{%- comment -%} ** STEP FINAL: Save the file  {%- endcomment -%}
../uploads/wf-featured-images/{{post.path | split: '/' | last | split: '.md' | first | append: '.png'}}
{%- endfor -%}

{% comment %}
        {%- assign introText = "with " -%}
        {%- assign allGuests = "" -%}
        {% assign guestSize = post.guest-details.size %}
        {%- for detail in post.guest-details -%}
            {% if guestSize == 1 %}
                {% comment %} Display the name and title for one person {% endcomment %}
                {% assign guestName = detail.guest-name | escape %}
                {% assign guestTitle = detail.guest-title | escape %}
                {% assign allGuests = allGuests | 
                    prepend: introText |
                    append: guestName | 
                    append: "\n" | 
                    append: guestTitle %}
            {% endif %}
            {% if guestSize > 1 %}
                {% comment %} Only display names for multiple guests {% endcomment %}
                {% assign guestName = detail.guest-name | escape %}
                {% assign guestName = guestName | prepend: introText %}
                {% assign loopIndex = forloop.index %}
                {% if guestSize != loopIndex %}
                    {% assign allGuests = allGuests | 
                    append: guestName | 
                    append: "\n" %}
                {% else %}
                    {% assign allGuests = allGuests | 
                    append: guestName %}
                {% endif %}
            {% endif %}
        {%- endfor -%}
        -size 405x195 caption:&#39;{{allGuests}}&#39; &#96;# List the guest names for the podcast&#96;&#92;
        -geometry +550+446 &#96;# Set the x and y position of the guest names&#96;&#92;
        -composite &#96;# Add guest names to the image&#96;&#92;
        +write ../uploads/wf-featured-images/{{post.path | split: '/' | last | split: '.md' | first | append: '-no-play.png'}} &#92;
        -page +972+448 sc-play.png &#96;# load play icon image&#96;&#92;
        -layers flatten &#92;
        ../uploads/wf-featured-images/{{post.path | split: '/' | last | split: '.md' | first | append: '.png'}}
{%- endfor -%}
{% endcomment %}