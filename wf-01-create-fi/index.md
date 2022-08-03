---
layout: page
title: Create featured images
---
The code contained in this folder will read guest images and perform various steps to create a featured image

## TODO:
* Fix the photo filename in create-featured-image.sh so it points to the correct filename
* Create a single image for all guests
* address problem with the dropshadow being black
* Rename the guest filename so it is 

1. Add title text
2. Add guest text

## Dependencies
* /_data/wf-data-fi.yaml
* Imagemagick (should be in the dockerfile)
* ProximaNovaA-Bold.ttf (font)
* Jekyll 4.x (untested with 3.x, but could work)

## Open the script for testing
<a href="{{- "/wf-01-create-fi/create-featured-image.sh" | relative_url -}}" target="blank" >Open...</a>

{% assign variable = value %}

## Code sample
The following code may change, but the general idea is to use Imagemagic to resize, crop, border, and shadow guest images
```
# note: make sure to run chmod +x script-name in the final solution.sh

# The following code is for four guests. The code will adjust for one, two, three, or four (no more than 4)
magick convert sc-template.png `# load template background image`\
    \( face.png -resize 282x282 -set page +256+205 \) \
    -layers flatten `# merge the template, play, and guests layers`\
    -font './share-card-creator/fonts/ProximaNovaA-Bold.ttf' `# load the font`\
    -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
    -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
    -geometry +550+46 `# Set the x and y position for the PODCAST text`\
    -composite `# Add text to the image`\
    -fill white -background none `# The title for the podcast does not have a background`\
    -size 580x340 caption:'Outcome-driven design and team behaviors' `# Podcast title as it appears on the website`\
    -geometry +550+96 `# Set the x and y location for the podcast title`\
    -composite `# Add the podcast's title to the image`\
    -fill white -background none `# the guest names do not have a background`\
    -size 405x195 caption:'with A Cool Person and Another Cool Person' `# List the guest names for the podcast`\
    -geometry +550+446 `# Set the x and y position of the guest names`\
    -composite `# Add guest names to the image`\
    +write sc-no-play.png \
    -page +972+448 sc-play.png `# load play icon image`\
    -layers flatten \
    sc-play.png
```

## Specs for GUESTS
### 1-UP
* Size: 282x282
* Position: 256x205
### 2-UP
* Size: 282x282
* Position: 256x37
* Position: 256x375
### 3-UP
* Size: 200x200
* Position: 295x41
* Position: 295x246
* Position: 295x451
### 4-UP
* Size: 150x150
* Position: 315x41
* Position: 315x193
* Position: 315x346
* Position: 315x497

## Code to get guest image size and placement
Get the values for the image from a data file
{% assign numGuests = 3 %}
{% assign guestIndex = numGuests | minus: 1 %}
{% assign valueIndex = 1 | minus: 1 %}
Number of guests: {{numGuests}}

Guest index: {{numGuests}}

ValueIndex: {{valueIndex}}
{% assign imagePlacement = site.data.wf-data-fi[guestIndex].items[valueIndex].value %}

Value to get: {{valuetoget}}

### Text
* PODCAST: size: 580x40 position: +550+46
* Title: size: 580x340 position: +550+96
* Guest names: 405x195 position: +550+446

## Code to build list of photos
This section creates the variables to use depending on the number of guests and guest titles
{% assign podcastTitle = '' %}
{% assign podcastNumGuests = '' %}
{% assign podcastGuests = '' %}
{% assign guestPhotos = '' %}

{% assign posts = site.posts | where_exp: 'post', 'post.guest-details !=nil' %}
{% for post in posts %}
    {% assign podcastTitle = post.title %}
    {% assign numGuests = post.guest-details.size %}
    {% for guestDetail in post.guest-details %}
        forloop Index: {{forloop.index}}
        {% assign guestIndex = numGuests | minus: 1 %}
        {% assign valueIndex = forloop.index | minus: 1 %}
        {% assign imagePlacement = site.data.wf-data-fi[guestIndex].items[valueIndex].value %}
        {% assign guestPhotos = guestDetail.guest-photo |
            prepend: '../wf-guest-images-fi' |
            prepend: "&#92;( " |
            append: imagePlacement |
            append: " &#92;) &#92;"
        %}
        guest-photo: {{detail.guest-photo | relative_url }}
        filename: {{detail.guest-photo | split: '/' | last }}
    {% endfor %}
    podcastTitle: {{podcastTitle}}
    podcastNumGuests: {{podcastNumGuests}}
    guestPhotos: {{guestPhotos}}
{% endfor %}

{% assign photoOne = post.guest-details[0].guest-photo | prepend: '../wf-guest-images-fi' | prepend: "&#92;( " | append: '&#10;&#10;' %}






## Test code
This section can be used to debug locally before adjusting the shell script.
{% assign posts = site.posts | where_exp: 'post', 'post.guest-details !=nil' %}
{% for post in posts %}
    Title: {{post.title}}
    Size(new): {{post.guest-details.size}}
    First image: {{post.guest-details[0].guest-photo}}
    Second image: {{post.guest-details[1].guest-photo}}
    Third image: {{post.guest-details[2].guest-photo}}
    Fourth image: {{post.guest-details[3].guest-photo}}
    {% for detail in post.guest-details %}
        guest-photo: {{detail.guest-photo | relative_url }}
        filename: {{detail.guest-photo | split: '/' | last }}
    {% endfor %}
{% endfor %}

