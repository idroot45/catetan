---
excerpt: "How do I change the user agent string in the Chrome release for Android?"
title: "Changing the User Agent in Chrome for Android"
link: "https://support.google.com/chrome/forum/AAAAP1KN0B0wz20WE2NGg8/?hl=id"
categories: [tips]
tags: [user agent, chrome android]
---

Question: {{ page.excerpt }}

Answer:

Well, I finally managed to do it manually.
If someone is not familiar with adb, you can do like this **using a rooted Phone and explorer with super user rights** (I'm using Antek explorer, editor is included):
 
1. Allow to see hidden files through Explorer
2. Navigate to Device root/data/local
3. Make a new file called "chrome-command-line"
4. Fill the file with the following :
 
`chrome --user-agent="Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10"`
 
(I setted the user-agent to Ipad in this exemple)

For other agents replace by the following :
 
`Desktop Chrome: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19`

`Desktop Safari: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/534.53.11 (KHTML, like Gecko) Version/5.1.3 Safari/534.53.10`

`iPhone Safari: Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A543 Safari/419.3`

`iPad Safari: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10`
 
Hope this helps ;)
