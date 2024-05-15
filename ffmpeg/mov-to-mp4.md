# mov to mp4

```
brew install ffmpeg
```

To convert a `.mov` video file to an audio-only `.mp4` file using FFmpeg, you'll essentially extract the audio stream from the `.mov` file and package it in an `.mp4` container. Here's how you can do it with FFmpeg:

1. **Open your command line interface (CLI).**
2. **Type the following command:**

```bash
ffmpeg -i input.mov -vn -c:a copy output.m4a
```

Here’s a breakdown of the command:

- `-i input.mov`: Specifies the input file.
- `-vn`: This option tells FFmpeg to ignore the video stream.
- `-c:a copy`: This tells FFmpeg to copy the audio codec as is (no re-encoding), preserving the original quality.
- `output.m4a`: Specifies the output file. While you mentioned `.mp4`, for audio-only, it's more typical to use `.m4a`, which is an audio-only format using the same container.

This command will produce an audio file in the M4A format, which is essentially an MP4 container with only audio content. If you specifically need the file extension to be `.mp4`, you can simply change `output.m4a` to `output.mp4` in the command. The internal content remains primarily the same, but naming conventions might affect compatibility with some players:

```bash
ffmpeg -i input.mov -vn -c:a copy output.mp4
```

Both commands will extract the audio without re-encoding, ensuring the process is fast and the quality of the original audio is maintained.
