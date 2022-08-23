# Godot-TimeTravelShader
Example project for a shader implementing a time travel effect

DISCLAIMER:
This is just a quick and dirty prototype for proof of concept ;)

How it works:

- actually two shaders!
- needs tow objects (one new and one old)
  - each Object must contain a mesh
  - and a second mesh that is sligthly down scaled and has inverted normals for replacing the inside of the mesh
- add "timetravelshader" to the material_overrid of the outer mesh
  - (flag the "blendIn" option for the old object)
- add "innerPartShader" to the material_override of the inner mesh
- create a area node
  - create a sherical collision shape in it
- attach the "TimeTravelObject" scribt to the sourounding node 
  - assign the area node as the controll node for the script
- you can move the area or scale the collision shape and the new object should disappear and the old one will appear

