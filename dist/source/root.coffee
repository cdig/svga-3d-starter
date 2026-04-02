Take ["Control", "Convert", "Ease", "FlowArrows", "Highlight", "HUD", "Pressure", "Symbol", "Model"], (Control, Convert, Ease, FlowArrows, Highlight, HUD, Pressure, Symbol, Model)->
  Symbol "root", ["root"], (element)->
    
    setup: ()->

      @reset = Control.button
        name: "Reset Camera"
        click: ()=>
          @panel.resetCamera()

      Model.createPanel
        # <model>.glb should exist in your source/models folder, but in this path should be prefixed with svga-models for gulp compile reasons
        model: "svga-models/cube.glb"
        
        debug: true                  # Displays logs for clicks, morph targets, and animations
        
        panelSettings:
            x: 1750
            y: 575
            width: 800
            height: 1200
            # backgroundColor: "#dadada" # Use 'none' for fully transparent, and "#00000055" for translucent black etc.
            fullscreen: true # When true, your model will take up the entire screen ignoring x,y,width,height
            borderRadius: "5px"
        
        initialCameraPosition: 
            x: 3, y:3, z:3

        useCustomLighting: false  # If false, basic lighting will be added automatically. If true, you will need to add your own lights with code
        orbitAndZoom: true # Allows user interaction with the camera
        blockNav: true     # Prevents 3D mouse events from panning the background SVG
    
      .then (@panel) => 
          # The panel is now ready. Initialize your 3D logic here.
      
      
    ms: ()->
      