# This imports all the layers for "TP" into tpLayers
tpLayers = Framer.Importer.load "imported/TP"



tpLayers['cardEuvolemia2'].opacity = 0
tpLayers['cardCreatinine2'].opacity = 0
tpLayers['cardCreatinine3'].opacity = 0
tpLayers['cardCreatinine4'].opacity = 0
tpLayers['Recos3'].opacity = 0
tpLayers['datPanel2'].opacity = 0
tpLayers['ButtonAdQuest'].opacity = 0
tpLayers['ButtonAdInfo'].opacity = 0
tpLayers['ButtonMore'].opacity = 0
tpLayers['Recos2'].opacity = .2
tpLayers['cardReco3'].opacity = 0
tpLayers['cardReco4'].opacity = 0
tpLayers['cardRecoContent2'].opacity = 0
tpLayers['badgeReco'].opacity = 0
tpLayers['dropDown'].opacity = 0
tpLayers['cardEuvolemia2'].opacity = 0
tpLayers['cardCreatinine2'].opacity = 0
tpLayers['cardCreatinine3'].opacity = 0
tpLayers['cardCreatinine4'].opacity = 0
tpLayers['Recos3'].opacity = 0
tpLayers['datPanel2'].opacity = 0
tpLayers['datPanel1'].opacity = .2
tpLayers['subsectionPicker'].opacity = .2

tpLayers['dropDown'].states.add({
	show: {opacity: 100},
})
tpLayers['cardCreatinine'].states.add({
	push: {y: 500},

})
tpLayers['cardEuvolemia'].states.add({
	push: {y: 340},

})
tpLayers['cardCreatinine2'].states.add({
	show: {}
	pull: {y: 445, opacity: 100},
	
})
tpLayers['cardEuvolemia2'].states.add({
	show: {}
	pull: {y: 610, opacity: 100},
	
})


tpLayers['dropDown'].states.animationOptions = 
   curve:"ease-in-out"
   time: .2   
tpLayers['cardCreatinine'].states.animationOptions = 
   curve:"ease-in-out"
   time: .2
 tpLayers['cardEuvolemia'].states.animationOptions = 
   curve:"ease-in-out"
   time: .2
tpLayers['cardCreatinine2'].states.animationOptions = 
   curve:"ease-in-out"
   time: .2
tpLayers['cardEuvolemia2'].states.animationOptions = 
   curve:"ease-in-out"
   time: .2
      
tpLayers['dropDownHeader'].on Events.Click, ->
	tpLayers['dropDown'].states.next()
	tpLayers['cardCreatinine'].states.next()
	tpLayers['cardEuvolemia'].states.next()

	

		
	