# Pixelator
Pixelates an image with a varying number of pixels

![Gif](data/pixelator_small.gif?raw=true "Gif")

### Overview:
* The program loads an image from the data directory and displays it alongside a pixelated rendering of the same image.
* The loaded image should have a 1:1 aspect ratio (a square) in order to prevent the image from being distorted.
* There is a slider at the bottom of the original image which allows the user to control the number of pixels used to render the pixelated image:
  * Moving the slider to the **right** will **increase** the number pixels which will result in a **higher** resolution rendering of the pixelated image.
  * Moving the slider to the **left** will **decrease** the number pixels which will result in a **lower** resolution rendering of the pixelated image.

### Note:
Instead of rendering the pixelated image for each iteration of the draw loop, the program checks if the slider was moved and re-renders the image only if it was.
### Examples:
Low resolution:
![Low resolution](data/lowRes.jpg?raw=true "Low resolution")
Medium resolution:
![Medium resolution](data/mediumRes.jpg?raw=true "Medium resolution")
High resolution:
![High resolution](data/highRes.jpg?raw=true "High resolution")
