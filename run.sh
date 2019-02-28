#!/bin/sh

cut -d ',' -f 3,5 /root/symmetrical-fiesta-scrapers/youtube-one-to-one/youtube_channels.csv > /root/sync_infile/yt.csv
cut -d ',' -f 1,3 /root/sharechat-instagram-scraper/users.csv > /root/sync_infile/ig.csv
cut -d ',' -f 1,2,3 /root/symmetrical-fiesta-scrapers/facebook-scraper/profiles.csv > /root/sync_infile/fb.csv

commit_message="sync commit"
git add . -A
git commit -m "$commit_message"
git push
