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
{% include audio id="soundcloud_audio_id" provider="souncloud" %}
```

{% include audio provider="soundcloud" id="676560620" %}

### Include hosted audio track

```yaml
{% include audio id="audio_name.mp3" provider="hosted" %}
```

{% include audio provider="hosted" id="SanninBattleTheme.mp3" %}


### Embed youtube as audio track

```yaml
{% include audio id="youtube_video_id" provider="youtube" %}
```
