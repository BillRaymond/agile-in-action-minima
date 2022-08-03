magick convert sc-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/balloons2.png -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'Exciting Agile in Action podcast news' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
        -size 405x195 caption:'with A Cool Person\nand Another Cool Person\nAnd yet another very cool person we are excited to have on the podcast' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-08-02-exciting-agile-in-action-podcast-news-no-play.png \
        -page +972+448 sc-play.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-08-02-exciting-agile-in-action-podcast-news.png