# ICO, Favicon

# JPG

- Joint Photographic Experts Group
- 24 bits color?

# PNG

- Portable Network Graphics
- lossless?
- 48 bits color?

# GIF

- Graphics Interchange Format

# Comparison

PNG's are pixel perfect (non-lossy), and require very little extra CPU energy to display. However, large PNGs may take longer to read from storage than more compressed image formats, and thus be slower to display.

JPG's are smaller to store, but lossy (amount depends on compression level), and to display them requires a much more complicated decoding algorithm. But the typical compression and image quality is usually quite sufficient for photos.

Use JPG's for photos and for anything large, and PNG's for anything small and/or designed to be displayed "pixel perfect" (e.g. small icons) or as a part of a composited transparent overlay, etc.

## alt

https://blog.hubspot.com/marketing/image-alt-text

Line 34:9: img elements must have an alt prop, either with meaningful text, or an empty string for decorative images jsx-a11y/alt-text

Line 34:9: Redundant alt attribute. Screen-readers already announce `img` tags as an image. You don’t need to use the words `image`, `photo,` or `picture` (or any specified custom words) in the alt prop jsx-a11y/img-redundant-alt
