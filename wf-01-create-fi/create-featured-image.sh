---
layout: shell
---
#!/bin/bash
# -e Exit immediately if a command exits with a non-zero status
# -x Echo all the commands as they run, not just echos
set -e -x

{% comment %}
    note: make sure to run chmod +x script-name in the final solution.sh
    When Jekyll builds this file, it will create a shell script that a
    GitHub Action can use to build featured images for each podcast post.

    Dpendencies
    1. ImageMagick
    2. There is another workflow called wf-00-guest-images (or similar) 
       in this site that must be run first. If not, guest photos will not
       display in the featured images
{% endcomment %}

{%- comment -%} Determine if the script should only build nonexistent featured images or all of them {%- endcomment -%}
    {%- assign recreateAllFi = site.data.configs.wfRecreateFeaturedImages -%}

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

{%- comment -%} You can reduce processing time by using a limit, like this: for post in posts limit: 1 {%- endcomment -%}
{%- for post in posts -%}

{%- comment -%} ** STEP 0: Set re-usable variables {%- endcomment -%}
{%- comment -%}
    escape, smartify and parenthesis are problems with BASH, so fix them before starting
    Other special characters may need fixing as well. If so, update this area.
{%- endcomment -%}
    {%- assign postTitle = post.title | escape | smartify -%}
    {%- assign postTitleForEcho = post.title | escape | smartify | replace: "(" | replace: ")" -%}

{%- comment -%} Create the featured image card filename without an extension {%- endcomment -%}
    {%- assign cardFileName = post.path 
    | split: '/' 
    | last 
    | prepend: '../uploads/wf-featured-images/' 
    -%}
    {%- assign cardExtension = cardFileName.size | split: '.' | last | size -%}
    {%- assign cardFileSize = cardFileName.size -%}
    {%- assign cardFileExtensionSize = cardFileName | split: '.' | last | size -%}
    {%- assign cardFileSizeNoExtension = cardFileSize | minus: cardFileExtensionSize | minus: 1 -%}
    {%- assign cardFileNameNoExtension = cardFileName | slice: 0,cardFileSizeNoExtension -%}
    {%- assign cardFileNamePlay = cardFileNameNoExtension | append: ".png" -%}
    {%- assign cardFileNameNoPlay = cardFileNameNoExtension | append: '-no-play.png' -%}


{%- comment -%} ** Before starting, determine what featured images to create {%- endcomment -%}
    {%- assign staticFiles = 
            site.static_files 
            | where_exp: "item", 
                "item.path == cardFileNamePlay" -%}
    {%- if staticFiles.size > 0 and recreateAllFi == false -%}
        {%- continue -%}
    {%- endif -%}


{%- comment -%} ** STEP 1: start ImageMagick {%- endcomment -%}
echo "* START {{postTitleForEcho}}"
magick convert fi-template.png &#96;# load template background image&#96;&#92;&#10;

{%- comment -%} ** STEP 2: Size and place guest images {%- endcomment -%}
{%- for detail in post.guest-details -%}
{%- comment -%} Get the zero-based index for number of guests and current loop index {%- endcomment -%}
{%- assign numGuests = post.guest-details.size | minus: 1 -%}
{%- assign currGuestIndex = forloop.index | minus: 1 -%}
{%- comment -%} imagemagick uses slashes, parens, and backticks. Define those here {%- endcomment -%}
{%- assign imagePrepend = "&#92;( " -%}
{%- assign imageAppend = " &#92;) &#96;# load a guest photo&#96;&#92;" -%}
{%- assign photoPlacement = site.data.wf-data-fi[numGuests].items[currGuestIndex].value -%}
{%- comment -%} all photos must end in .png and be located in a specific folder {%- endcomment -%}
{%- assign guestPhoto = detail.guest-photo | split: '/' | last | split: '.' | first | append: '.png' | prepend: '../uploads/wf-guest-images-fi/' -%}
{%- assign imageMagickImage = guestPhoto | prepend: imagePrepend | append: " " | append: photoPlacement | append: imageAppend -%}
{{imageMagickImage}}&#10;
{%- comment -%} add each guest image to the featured image {%- endcomment -%}
{%- endfor -%}

{%- comment -%} ** STEP 3: Merge featured image with guest images {%- endcomment -%}
-layers flatten &#96;# merge the template and guest photos&#96;&#92;&#10;

{%- comment -%} ** STEP 4: Load font and add the PODCAST and post titles {%- endcomment -%}
-font &#39;fonts/ProximaNovaA-Bold.ttf&#39; &#96;# load the font&#96;&#92;
-fill &#39;#f49f1c&#39; -background none &#96;# The podcast title does not have a background&#96;&#92;
-size 580x40 caption:&#39;AGILE IN ACTION PODCAST&#39; &#96;# Add the word PODCAST to the template&#96;&#92;
-geometry +550+46 &#96;# Set the x and y position for the PODCAST text&#96;&#92;
-composite &#96;# Add the text layer to the image&#96;&#92;
-fill white -background none &#96;# The title for the podcast does not have a background&#96;&#92;
-size 580x340 caption:&#39;{{postTitle}}&#39; &#96;# Podcast title as it appears on the website&#96;&#92;
-geometry +550+96 &#96;# Set the x and y location for the podcast title&#96;&#92;
-composite &#96;# Add the podcast&#39;s title to the image&#96;&#92;
-fill white -background none &#96;# the guest names do not have a background&#96;&#92;
-layers flatten &#96;# merge the template and guest photos&#96;&#92;

{%- comment -%} ** STEP 5: Add the guest names {%- endcomment -%}
-fill white -background none &#96;# the guest names do not have a background&#96;&#92;&#10;
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
-composite &#96;# Add guest names to the image&#96;&#92;&#10;

{%- comment -%} ** STEP 6: Save a version without a play icon  {%- endcomment -%}
+write {{cardFileNameNoExtension | append: '-no-play.png'}} &#92;&#10;

{%- comment -%} ** STEP FINAL: Save the file with a play icon {%- endcomment -%}
-page +972+448 fi-play-icon.png &#96;# load play icon image&#96;&#92;
-layers flatten &#92;
{{cardFileNameNoExtension | append: '.png'}}&#10;
echo "* FINISH {{postTitleForEcho}}"&#10;&#10;
{%- endfor -%}
