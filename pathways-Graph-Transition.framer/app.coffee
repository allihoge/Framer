# This imports all the layers for "graphflip" into graphflipLayers1
layer = new Layer({width:450, height:550, backgroundColor:'#F0EDEA'})

graphflipLayers1 = Framer.Importer.load "imported/graphflip"

graphflipLayers1['graph'].opacity = 0


layer.states.add({
  flip: {rotationY: 180, opacity: 0.5}  
})

graphflipLayers1['graph'].states.add({ 
  flipfadeIn: {opacity: 1} 

})

graphflipLayers1['datPanel1'].states.add({
  flipfadeOut: {rotationY: 180, opacity: 0}
 
  
})

graphflipLayers1['graph'].states.animationOptions = {
  time: .8,
  curve: "bezier-curve",
  curveOptions: "ease-in"
}

graphflipLayers1['datPanel1'].states.animationOptions = {
  time: .8,
  curve: "bezier-curve",
  curveOptions: "ease-in"
}

layer.on Events.Click, ->
  layer.states.next()
  graphflipLayers1['graph'].states.next()
  graphflipLayers1['datPanel1'].states.next()
 



	
