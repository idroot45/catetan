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
If someone is not familiar with adb, you can do like this **using a rooted Phone and explorer with super user rights** (I'm using [Antek explorer (4.58 MB)](/mega.nz/?key=ppkxHYSL&file=DKqH367vieMdBMRSDo_A2cQaYSGSCooqm29o1rtj-yI)¹, editor is included):

I setted the user-agent to Ipad in this exemple
{:.notice .notice--info}

1. Allow to see hidden files through Explorer
2. Navigate to Device root/data/local
3. Make a new file called "chrome-command-line"
4. Fill the file with the following :
   ```html
   chrome --user-agent="Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10"
   ```

¹ - Use Antek Explorer alternative as it doesn't support Oreo and above: [ES File Explorer Pro (18.11 MB)](/mega.nz/?key=&file=)
{:.notice .notice--info}

***

For other agents replace the `chrome --user-agent` variable by the following value:

## User agents

Theese user agents are updated per 2020 April 28:

### Desktop

Desktop Mac Chrome:
```text
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36
```

Desktop Mac Firefox
```text
Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:75.0) Gecko/20100101 Firefox/75.0
```

Desktop Mac Safari:
```text
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36
```

Desktop Linux Chrome:
```text
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36
```

Desktop Linux Firefox
```
Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:75.0) Gecko/20100101 Firefox/75.0
```

### Mobile

iPhone Safari
```text
Mozilla/5.0 (iPhone; CPU iPhone OS 13_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/81.0.4044.124 Mobile/15E148 Safari/604.1
```

iPad Safari:
```text
Mozilla/5.0 (iPad; CPU OS 13_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/81.0.4044.124 Mobile/15E148 Safari/604.1
```

Android Firefox 
```
Mozilla/5.0 (Android 10; Mobile; rv:68.0) Gecko/68.0 Firefox/68.0
```

Hope this helps ;)
