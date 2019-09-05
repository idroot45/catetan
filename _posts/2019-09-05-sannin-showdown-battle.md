---
#header:
# image: ""
# teaser: ""
categories: [audio]
tags: [naruto theme track, sannin showdown audio, sannin battle theme]
---
Testing audio embedding with include audio

### Include souncloud audio track/playlist

```yaml
{% include audio id=&quot;soundcloud_audio_id&quot; provider=&quot;souncloud&quot; %}
```

{% include audio provider="soundcloud" id="676560620" %}

### Include hosted audio track

```yaml
{% include audio id=&quot;audio_name.mp3&quot; provider=&quit;hosted&quot; %}
```

{% include audio provider="hosted" id="SanninBattleTheme.mp3" %}


### Embed youtube as audio track

```yaml
{% include audio id=&quot;youtube_video_id&quot; provider=&quot;youtube&quot; %}
```
