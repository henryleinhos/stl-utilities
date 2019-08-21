## STL Utilities

Reminants of a senior project from Cal Poly, SLO. These STL utility files were used to generate 3d models of iPhone cases and other projects from black and white image files that represented either raised or negative space. Written in C for speed - previews were generated quickly for a web interface. May or may not work - contact @ChrisPolis for inquiries.

extrude - A tool for converting 2D images into 3D objects

```
 Usage: $ extrude [input file (.pgm)] [width(px)] [height(px)] [output (.stl)] [options]
 Options: 
    --binary | --ascii                 STL output in binary or ASCII format
    --extrude | cut | sunken | relief  Extrusion type
    --width [#]                        STL object width
    --height [#]                       STL object height
    --depth [#]                        Extrusion depth 
    --base [#]                         Base depth 
    --addto [filename]                 Add to existing STL 
    --invert                           Invert black/white on 2D img 
    --flip                             Flip image horizontally
```

 Examples:

  generate iPhone 4 case:
```
  $ make clean && make extrude && time ./extrude ../cp_xlarge.hmp 2200 3200 testExt.stl --depth 1.5 --width 54.2 --height 78.8 --ascii --addto ../iphonev5.stl
``` 
