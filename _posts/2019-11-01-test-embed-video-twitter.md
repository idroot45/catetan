---
title: "Embeding a Twitter Video Post to Blog"
excerpt: "This is spesific (personal purpose) enhancement for Minimal Mistakes Jekyl Theme" 
header:
 video:
  id: "NZ05T0rz0U"
  provider="twitter"
categories: [eksperimen]
tags: [twitter embed, twitter video]
date: 2019-11-01 12:05:00
---

This blog is using [Minimal Mistakes Jekyll Theme](https://github.com/mmistakes/minimal-mistakes/) with aplying it as a remote theme.

1. Modify the `video` file inside `_includes` like this:

```raw
{% elseif video_provider = "twitter" %}
<iframe src="https://t.co/{{ video_id }}"/></iframe>
```

2. Twitter video embed as a post banner:

```yaml
---
title: "Some Title"
header:
 video:
  id: "NZ05T0rz0U"
  provider="twitter"
---
```

3. Video embed as a body embed:

```liquid
{% include video id="NZ05T0rz0U" provider="twitter" %}
```
