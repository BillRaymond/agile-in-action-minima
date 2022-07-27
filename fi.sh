# Create a featured image from a template
# There are three columns to the template:
#  | Logo and Bill | Guest Photos | Text and optional Play icon


# Featured image for one guest
magick convert sc-template.png `# load template background image`\
    -page +972+448 sc-play.png `# load play icon image`\
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
    sc.png
read -p "press any key to resume"

# Featured image for two guests
magick convert sc-template.png `# load template background image`\
    -page +972+448 sc-play.png `# load play icon image`\
    \( face.png -resize 282x282 -set page +256+37 \) \
    \( face.png -resize 282x282 -set page +256+375 \) \
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
    sc.png
read -p "press any key to resume"

# Featured image for three guests
magick convert sc-template.png `# load template background image`\
    -page +972+448 sc-play.png `# load play icon image`\
    -layers flatten `# combine layers`\
    \( face.png -resize 200x200 -set page +295+41 \) \
    \( face.png -resize 200x200 -set page +295+246 \) \
    \( face.png -resize 200x200 -set page +295+451 \) \
    -layers flatten `# combine layers`\
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
    sc.png
read -p "press any key to resume"

# Featured image for four guests
magick convert sc-template.png `# load template background image`\
    -page +972+448 sc-play.png `# load play icon image`\
    \( face.png -resize 150x150 -set page +315+41 \) \
    \( face.png -resize 150x150 -set page +315+193 \) \
    \( face.png -resize 150x150 -set page +315+346 \) \
    \( face.png -resize 150x150 -set page +315+497 \) \
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
    sc.png
read -p "press any key to resume"
