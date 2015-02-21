# This imports all the layers for "A-Level-ActivitySummary" into aLevelActivitysummaryLayers
aLevel = Framer.Importer.load "imported/A-Level-ActivitySummary"

aLevel['ActivitySummary'].opacity = 0


aLevel['Card1'].states.add({ 
  flipfadeOut: {y:50, opacity: 0}
})

aLevel['Card12'].states.add({
   flipfadeOut: {y:600, opacity: 0}
})

aLevel['Card3'].states.add({
   flipfadeOut: {y:500, opacity: 0}
})

aLevel['ActivitySummary'].states.add({
	FadeIn: {opacity: 1}
})

aLevel['clickstate'].states.add({
	show: {opacity: 1}
	})

aLevel['Card1'].states.animationOptions = {
  time: .5,
  curve: "bezier-curve",
  curveOptions: "ease-in-out"
}

aLevel['Card12'].states.animationOptions = {
  time: .5,
  curve: "bezier-curve",
  curveOptions: "ease-in"
}

aLevel['Card3'].states.animationOptions = {
  time: .5,
  curve: "bezier-curve",
  curveOptions: "ease-in-out"
}

aLevel['ActivitySummary'].states.animationOptions = {
  time: 1.5,
  curve: "bezier-curve",
  curveOptions: "ease-in-out"
}

aLevel['Card1'].on Events.Click, ->
	 aLevel['clickstate'].opacity = 1
	 aLevel['Card1'].states.next()
	 aLevel['clickstate'].states.next()
	 aLevel['Card3'].states.next()
	 aLevel['Card12'].states.next()
	 aLevel['ActivitySummary'].states.next()

 
