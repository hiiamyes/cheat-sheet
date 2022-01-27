# Why & is changed to &amp; in the nuxt's server side rendering HTML

```
tw,english,,en_united_states_oklahoma_city
metadata title
received: 2022 Oklahoma City, OK10大英文家教 & 補習班推薦，每堂課程費用 $90 - $450 元間 | AmazingTalker
expected: 2022 Oklahoma City, OK10大英文家教 &amp; 補習班推薦，每堂課程費用 $90 - $450 元間 | AmazingTalker
https://tw.amazingtalker.com/tutors-debug/english/?city=en_united_states_oklahoma_city
https://tw.amazingtalker.com/tutors/english/?city=en_united_states_oklahoma_city

<meta data-n-head="ssr" data-hid="og:title" property="og:title" content="2022 Oklahoma City, OK10大英文家教 &amp; 補習班推薦，每堂課程費用 $90 - $450 元間 | AmazingTalker">
```

https://stackoverflow.com/questions/9084237/what-is-amp-used-for

HTML doesn't recognize the & but it will recognize &amp; because it is equal to & in HTML

I looked over this post someone had made: http://www.webmasterworld.com/forum21/8851.htm
