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

https://stackoverflow.com/a/9084277

HTML doesn't recognize the & but it will recognize &amp; because it is equal to & in HTML

I looked over this post someone had made: http://www.webmasterworld.com/forum21/8851.htm

---

& is HTML for "Start of a character reference".

&amp; is the character reference for "An ampersand".

&current; is not a standard character reference and so is an error (browsers may try to perform error recovery but you should not depend on this).

If you used a character reference for a real character (e.g. &trade;) then it (™) would appear in the URL instead of the string you wanted.

(Note that depending on the version of HTML you use, you may have to end a character reference with a ;, which is why &trade= will be treated as ™. HTML 4 allows it to be ommited if the next character is a non-word character (such as =) but some browsers (Hello Internet Explorer) have issues with this).
