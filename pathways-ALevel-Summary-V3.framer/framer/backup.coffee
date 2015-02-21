

card = new Layer(width:680, height:240, backgroundColor:"grey").centerX()
card2 = new Layer(width:680, height:240, y: 260, backgroundColor:"#d2d2d2").centerX()
card3 = new Layer(width:680, height:240, y: 520, backgroundColor:"#d2d2d2").centerX()
card4 = new Layer(width:680, height:240, y: 780, backgroundColor:"#d2d2d2").centerX()
purple = new Layer width:680, height:20, backgroundColor:"purple", superLayer:card
orange = new Layer width:680, height:60, y:-60, backgroundColor:"orange", superLayer:card
Framer.Defaults.Animation = curve: "spring(200,30,0,0)"
purple.states.add
	up: {y:-60}

orange.states.add
	down: {y:0}
card.states.add
	flip: {rotationY:180, scaleY:5}
card.originY=0		
card2.states.add
	push: {y:500}
card3.states.add
	push: {y:700}
card4.states.add
	push: {y:900}
purple.states.on Events.StateWillSwitch,(stateA, stateB)->
	if stateB is "up"
		purple.placeBehind(orange)
		card.placeBefore(card2)
		card.placeBefore(card3)
		card.placeBefore(card4)
	else
	orange.placeBehind(purple)
	
card.on Events.Click, ->
	card.states.next()
	card2.states.next()
	card3.states.next()
	card4.states.next()
	purple.states.next()
	orange.states.next()
	
	