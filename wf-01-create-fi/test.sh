magick convert fi-template.png `# load template background image`\
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
-size 405x195 caption:'with Bill Raymond, founder and host of the Agile in Action with Bill Raymond Podcast\n10,000 active listeners, 2nd anniversary, transcriptions, and more' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-08-02-exciting-agile-in-action-podcast-news-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-08-02-exciting-agile-in-action-podcast-news.png
magick convert fi-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/wodtke.jpg -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'What it means to become nimble' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
-size 405x195 caption:'with Christina Wodtke\nLecturer at Stanford University, Author, and Speaker who teaches techniques to create high performing teams' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-06-14-what-it-means-to-become-nimble-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-06-14-what-it-means-to-become-nimble.png
magick convert fi-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/alla.jpg -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'Building a culture of psychological safety' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
-size 405x195 caption:'with Alla Weinberg\nCEO of Spoke and Wheel, Culture Designer, and Author of a Culture of Safety' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-06-07-building-a-culture-of-psychological-safety-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-06-07-building-a-culture-of-psychological-safety.png
magick convert fi-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/kilby-photo.jpg -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'Successful globally distributed teams' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
-size 405x195 caption:'with Mark Kilby\n' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-05-16-successful-globally-distributed-teams-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-05-16-successful-globally-distributed-teams.png
magick convert fi-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/seiden-1.jpg -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'Outcome-driven design and team behaviors' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
-size 405x195 caption:'with Josh Seiden, Designer, Product Guy and Author\n' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-05-09-outcome-driven-design-and-team-behaviors-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-05-09-outcome-driven-design-and-team-behaviors.png
magick convert fi-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/marsha-acker.png -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'The Art and Science of Facilitation' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
-size 405x195 caption:'with  Marsha Acker, CEO at Team Catapult and Author of The Art and Science of Facilitation\n' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-04-12-the-art-and-science-of-facilitation-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-04-12-the-art-and-science-of-facilitation.png
magick convert fi-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/ionitia.jpg -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'Risk-driven security in agile software development' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
-size 405x195 caption:'with Dan Ionita\nConsultant and Trainer' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-04-05-risk-driven-security-in-agile-software-development-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-04-05-risk-driven-security-in-agile-software-development.png
magick convert fi-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/gothelf-square.png -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'Introducing Objectives and Key Results (OKRs)' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
-size 405x195 caption:'with Jeff Gothelf, Author, Consultant, and Speaker\n' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-03-29-introducing-objectives-and-key-results-okrs-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-03-29-introducing-objectives-and-key-results-okrs.png
magick convert fi-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/jutta.jpg -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'The planet is also the customer: Agile and sustainability' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
-size 405x195 caption:'with Jutta Eckstein\n' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-03-15-the-planet-is-also-the-customer-agile-and-sustainabilty-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-03-15-the-planet-is-also-the-customer-agile-and-sustainabilty.png
magick convert fi-template.png `# load template background image`\
\( ../uploads/wf-guest-images-fi/becky.png -resize 282x282 -set page +256+205 \) `# load a guest photo`\
-layers flatten `# merge the template and guest photos`\
        -font 'fonts/ProximaNovaA-Bold.ttf' `# load the font`\
        -fill '#f49f1c' -background none `# The podcast title dos not have a background`\
        -size 580x40 caption:'PODCAST' `# Add the word PODCAST to the template`\
        -geometry +550+46 `# Set the x and y position for the PODCAST text`\
        -composite `# Add text to the image`\
        -fill white -background none `# The title for the podcast does not have a background`\
        -size 580x340 caption:'Avoid being your own worst enemy' `# Podcast title as it appears on the website`\
        -geometry +550+96 `# Set the x and y location for the podcast title`\
        -composite `# Add the podcast's title to the image`\
        -fill white -background none `# the guest names do not have a background`\
-size 405x195 caption:'with Becky Winkler, Corporate Psychologist\n' `# List the guest names for the podcast`\
        -geometry +550+446 `# Set the x and y position of the guest names`\
        -composite `# Add guest names to the image`\
        +write ../uploads/wf-featured-images/2022-03-08-avoid-being-your-own-worst-enemy-no-play.png \
        -page +972+448 fi-play-icon.png `# load play icon image`\
        -layers flatten \
        ../uploads/wf-featured-images/2022-03-08-avoid-being-your-own-worst-enemy.png

