#!/usr/bin/env bash
printf "\
<?xml version=\"1.0\"?>
<rss version=\"2.0\">
  <channel>
    <title>Operaen</title>
    <link>https://www.operaen.no/</link>
    <description>Den Norske Operaen</description>
    <generator>operaen.sh</generator>
$(curl -s "https://www.operaen.no/api/calendar/productions?language=no" \
| jq -r '.[] | "    <item> <title>\(.name)</title> <link>\(.url)</link> <guid>\(.id)</guid> </item>"')
  </channel>
</rss>
"
