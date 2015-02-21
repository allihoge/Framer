# This imports all the layers for "A-Level-ActivitySummary" into aLevelActivitysummaryLayers
aLevel = Framer.Importer.load "imported/A-Level-ActivitySummary"


aLevel['ActivitySummary'].originY = 0
aLevel['ActivitySummary'].scaleY = 0



aLevel['Card1'].states.add({ 
  flipfadeOut: {rotationY:180, visible:false}
})
aLevel['Card12'].states.add({ 
  flipfadeOut: {rotationY:180, visible:false}
})
aLevel['Card3'].states.add({ 
  flipfadeOut: {rotationY:180, visible:false}
})

aLevel['ActivitySummary'].states.add({
	FadeIn: {scaleY: 1}
	
})

aLevel['ActivitySummary'].states.animationOptions = {
	delay:.5
	time:.5
	curve: "bezier-curve",


}
aLevel['Card1'].states.animationOptions = {
  time: .5,
  curve: "bezier-curve",
  curveOptions: "ease-in-out"
}
aLevel['Card3'].states.animationOptions = {
  time: .5,
  curve: "bezier-curve",
  curveOptions: "ease-in-out"
}
aLevel['Card12'].states.animationOptions = {
  time: .5,
  curve: "bezier-curve",
  curveOptions: "ease-in-out"
}

aLevel['Card1'].on Events.Click, ->
	 	 aLevel['Card1'].states.next()
	 	 aLevel['ActivitySummary'].states.next()
aLevel['ActivitySummary'].on Events.Click, ->	 
 		aLevel['Card1'].states.next()
	 	aLevel['ActivitySummary'].states.next()
