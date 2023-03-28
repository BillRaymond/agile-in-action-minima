---
layout: home-admin
---
<a href="{{"/" | relative_url}}"><< ⚠️ This is an admin page that shows future podcasts. Return to the home page. ⚠️</a>
{% assign numGuests = site.posts  
    | where_exp: 'podcastPost', 'podcastPost.guest-details != nil' 
%}
Total guests: {{numGuests.size}}