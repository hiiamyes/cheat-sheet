

# timelapse video

```
ffmpeg -f image2 -pattern_type glob -framerate 30 -i 'G0*.JPG' -s 3840x2160 -vcodec libx264 -pix_fmt yuv420p test4.mp4
```

[Why won't video from ffmpeg show in QuickTime, iMovie or quick preview?](https://apple.stackexchange.com/questions/166553/why-wont-video-from-ffmpeg-show-in-quicktime-imovie-or-quick-preview)

In short, you (often) need to include the argument `-pix_fmt yuv420p` when using ffmpeg to generate H.264 content for Apple software/devices, and a bunch of other decoders that don't handle yuv444p.

```
ffmpeg -i input.avi -pix_fmt yuv420p output.mp4
```

This is not mentioned in the output when using the defaults, but can be found in their Encode/H.264 guide.

[Convert sequence of JPEG images to MP4 video](https://gist.github.com/alexellis/bbf2bc2a6789480fcd0031f99800df9c)

`ffmpeg  -r 24 -pattern_type glob -i '*.JPG' -i DSC_%04d.JPG -s hd1080 -vcodec libx264 timelapse.mp4`

- `-r 24` - output frame rate
- `-pattern_type glob -i '*.JPG'` - all JPG files in the current directory
- `-i DSC_%04d.JPG` - e.g. DSC_0397.JPG
- `-s hd1080` - 1920x1080 resolution
