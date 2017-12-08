Basically the port is ready for import.  Two things worth further investigation:

 * `Magick: Failed to close module ("JPEG: Invalid handle").`  (Same happens to
   other modules.  It is most likely GraphicsMagick's internal issue.)
 * Apparently background color leaks in lower rows of image.
