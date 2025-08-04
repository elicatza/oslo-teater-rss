#!/usr/bin/env bash

printf "\
<?xml version=\"1.0\"?>
<rss version=\"2.0\">
  <channel>
    <title>Nationaltheatret</title>
    <link>https://www.nationaltheatret.no/program/</link>
    <description>Nationaltheatret</description>
    <generator>operaen.sh</generator>
$(curl -s "https://www.nationaltheatret.no/program/" \
    | pup -c 'article.Production json{}' \
    | jq -r '.[].children[].children[].children[] | "    <item><title>\(.["data-ph-capture-attribute-productiontitle"])</title> <link>\((.href | select (.)))</link> <guid>\((.href | select (.)))</guid></item>"')
  </channel>
</rss>
"
