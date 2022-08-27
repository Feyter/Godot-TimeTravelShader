# Godot-TimeTravelShader
Example project for a shader implementing a time travel effect

**DISCLAIMER**:
This is just a quick and dirty prototype for proof of concept ;)

What you need:
- tow objects (one new and one old)
- for each object you need a regular mesh and a sligthly down scaled version with inverted faces for illusion of volum
<br>

How it works:
- Use Class "transitionObject" to create two objects (old version and new version of your model)
- Add two mesh in each object (Oter mesh and inner mesh)
- add "timetravelshader" to the material_overrid of the outer mesh
  - (flag the "blendIn" option for the old object)
- add "InnerParts" shader to the material_overrid of the inner mesh
  - (flag the "blendIn" option for the old object)
- select in inspector what mesh should be used for outer and which for inner

<br>

- Use Class TimeTravelTransitionObject" and link in both created TransitionObjects (old and new)
- Select in inspector what is the old and what is the new version

<br>

- Insert newly created TimeTravelTransitionObject into any scenen and create a area with an sphere collision shape
- select the TimeTravelTransition object and assign the area as controll in inspector
  - make sure to set run in edito if you want changes to be visible in edito (maybe needs to reload the scene)
- you can move the area or scale the collision shape and the new object should disappear and the old one will appear
