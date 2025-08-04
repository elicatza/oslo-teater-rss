#!/usr/bin/env bash

printf "\
<?xml version=\"1.0\"?>
<rss version=\"2.0\">
  <channel>
    <title>Det Norske Teatret</title>
    <link>https://www.detnorsketeatret.no/framsyningar/</link>
    <description>Det Norske Teatret</description>
    <generator>operaen.sh</generator>
$(curl -s "https://www.detnorsketeatret.no/framsyningar/" \
  | grep "plays=\"{\[" \
  | sed 's/^.*\(plays="{\)//' \
  | rev | sed 's/^"}//' | rev \
  | sed 's/&quot;/\"/g' \
  | jq -r '.[] | "<item><title>\(.name)</title> <link>\(.link)</link> <guid>\(.id)</guid></item>"')
  </channel>
</rss>
"
