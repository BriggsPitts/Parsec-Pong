extends Node3D


var oneplayer: bool = false
var twoplayer: bool = false

var oneplayerP1wins: bool = false
var oneplayerCPUwins: bool = false
var twoplayerP1wins: bool = false
var twoplayerP2wins: bool = false


var only_once : bool = true
var only_once2: bool = true
var only_once3: bool = true
var only_once4: bool = true
var only_once5: bool = true
var only_once6: bool = true
var only_once7: bool = true

var only2_once: bool = true
var only2_once2: bool = true
var only2_once3: bool = true
var only2_once4: bool = true
var only2_once5: bool = true
var only2_once6: bool = true
var only2_once7: bool = true

var title = load("res://parsecpong.tscn")
var titlespawn = title.instantiate()


# Called when the node enters the scene tree for the first time.
func _ready():
	var A = load("res://Amodel.tscn")
	var Aspawn = A.instantiate()
	Aspawn.position = Vector3(2, 2, 2)
	add_child(Aspawn)
	
	
	titlespawn.position = Vector3(1, 0.2, -15)
	add_child(titlespawn)
	
	
func _physics_process(delta):
	
	if Global.playeronescore == 7 && oneplayer == true:
		oneplayerP1wins = true
		
		
	if Global.playertwoscore == 7 && oneplayer == true:
		oneplayerCPUwins = true
		
	
	if Global.playeronescore == 7 && twoplayer == true:
		twoplayerP1wins = true
		
	
	if Global.playertwoscore == 7 && twoplayer == true:
		twoplayerP2wins = true
		
	
	var score1 = load("res://score1.tscn")
	var score1spawn = score1.instantiate()
	
	var score2 = load("res://score2.tscn")
	var score2spawn = score2.instantiate()
	
	var score3 = load("res://score3.tscn")
	var score3spawn = score3.instantiate()
	
	var score4 = load("res://score4.tscn")
	var score4spawn = score4.instantiate()
	
	var score5 = load("res://score5.tscn")
	var score5spawn = score5.instantiate()
	
	var score6 = load("res://score6.tscn")
	var score6spawn = score6.instantiate()
	
	var score7 = load("res://score7.tscn")
	var score7spawn = score7.instantiate()
	
	var title = load("res://parsecpong.tscn")
	var titlespawn = title.instantiate()
	
	if oneplayerP1wins == true:
		
		var new_text: String = $firstEdit.get_text().to_lower()
		var n = 0
		var letterNum = 1
		var letterPos: Vector3 = Vector3(0,0,0)
		
		if new_text.length() == 1:
			letterPos = Vector3(0, 0, -1)
		if new_text.length() == 2:
			letterPos = Vector3(-0.3, 0, -1)
		if new_text.length() == 3:
			letterPos = Vector3(-0.6, 0, -1)
		if new_text.length() == 4:
			letterPos = Vector3(-0.9, 0, -1)
		if new_text.length() == 5:
			letterPos = Vector3(-1.2, 0, -1)
		if new_text.length() == 6:
			letterPos = Vector3(-1.5, 0, -1)
		if new_text.length() == 7:
			letterPos = Vector3(-1.8, 0, -1)
		if new_text.length() == 8:
			letterPos = Vector3(-2.1, 0, -1)
		if new_text.length() == 9:
			letterPos = Vector3(-2.4, 0, -1)
		if new_text.length() == 10:
			letterPos = Vector3(-2.7, 0, -1)

		while n < new_text.length():
		
			if letterNum == 2:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 3:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 4:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 5:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 6:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 7:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 8:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 9:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 10:
				letterPos += Vector3(0.6, 0, 0)
			
		
			var letter = new_text[n]
		
			if letter == "a":
				var a = load("res://assets/alphabet/a.glb")
				var aspawn = a.instantiate()
				aspawn.position = letterPos
				add_child(aspawn)
				letterNum += 1
			
			if letter == "b":
				var b = load("res://assets/alphabet/b.glb")
				var bspawn = b.instantiate()
				bspawn.position = letterPos
				add_child(bspawn)
				letterNum += 1
			
			if letter == "c":
				var c = load("res://assets/alphabet/c.glb")
				var cspawn = c.instantiate()
				cspawn.position = letterPos
				add_child(cspawn)
				letterNum += 1
				
			if letter == "d":
				var d = load("res://assets/alphabet/d.glb")
				var dspawn = d.instantiate()
				dspawn.position = letterPos
				add_child(dspawn)
				letterNum += 1
				
			if letter == "e":
				var e = load("res://assets/alphabet/e.glb")
				var espawn = e.instantiate()
				espawn.position = letterPos
				add_child(espawn)
				letterNum += 1
				
			if letter == "f":
				var f = load("res://assets/alphabet/f.glb")
				var fspawn = f.instantiate()
				fspawn.position = letterPos
				add_child(fspawn)
				letterNum += 1
				
			if letter == "g":
				var g = load("res://assets/alphabet/g.glb")
				var gspawn = g.instantiate()
				gspawn.position = letterPos
				add_child(gspawn)
				letterNum += 1
				
			if letter == "h":
				var h = load("res://assets/alphabet/h.glb")
				var hspawn = h.instantiate()
				hspawn.position = letterPos
				add_child(hspawn)
				letterNum += 1
				
			if letter == "i":
				var i = load("res://assets/alphabet/i.glb")
				var ispawn = i.instantiate()
				ispawn.position = letterPos
				add_child(ispawn)
				letterNum += 1
				
			if letter == "j":
				var j = load("res://assets/alphabet/j.glb")
				var jspawn = j.instantiate()
				jspawn.position = letterPos
				add_child(jspawn)
				letterNum += 1
				
			if letter == "k":
				var k = load("res://assets/alphabet/k.glb")
				var kspawn = k.instantiate()
				kspawn.position = letterPos
				add_child(kspawn)
				letterNum += 1
				
			if letter == "l":
				var l = load("res://assets/alphabet/l.glb")
				var lspawn = l.instantiate()
				lspawn.position = letterPos
				add_child(lspawn)
				letterNum += 1
				
			if letter == "m":
				var m = load("res://assets/alphabet/m.glb")
				var mspawn = m.instantiate()
				mspawn.position = letterPos
				add_child(mspawn)
				letterNum += 1
				
			if letter == "n":
				var nLetter = load("res://assets/alphabet/n.glb")
				var nspawn = nLetter.instantiate()
				nspawn.position = letterPos
				add_child(nspawn)
				letterNum += 1
				
			if letter == "o":
				var o = load("res://assets/alphabet/o.glb")
				var ospawn = o.instantiate()
				ospawn.position = letterPos
				add_child(ospawn)
				letterNum += 1
				
			if letter == "p":
				var p = load("res://assets/alphabet/p.glb")
				var pspawn = p.instantiate()
				pspawn.position = letterPos
				add_child(pspawn)
				letterNum += 1
				
			if letter == "q":
				var q = load("res://assets/alphabet/q.glb")
				var qspawn = q.instantiate()
				qspawn.position = letterPos
				add_child(qspawn)
				letterNum += 1
				
			if letter == "r":
				var r = load("res://assets/alphabet/r.glb")
				var rspawn = r.instantiate()
				rspawn.position = letterPos
				add_child(rspawn)
				letterNum += 1
				
			if letter == "s":
				var s = load("res://assets/alphabet/s.glb")
				var sspawn = s.instantiate()
				sspawn.position = letterPos
				add_child(sspawn)
				letterNum += 1
				
			if letter == "t":
				var t = load("res://assets/alphabet/t.glb")
				var tspawn = t.instantiate()
				tspawn.position = letterPos
				add_child(tspawn)
				letterNum += 1
				
			if letter == "u":
				var u = load("res://assets/alphabet/u.glb")
				var uspawn = u.instantiate()
				uspawn.position = letterPos
				add_child(uspawn)
				letterNum += 1
				
			if letter == "v":
				var v = load("res://assets/alphabet/v.glb")
				var vspawn = v.instantiate()
				vspawn.position = letterPos
				add_child(vspawn)
				letterNum += 1
				
			if letter == "w":
				var w = load("res://assets/alphabet/w.glb")
				var wspawn = w.instantiate()
				wspawn.position = letterPos
				add_child(wspawn)
				letterNum += 1
				
			if letter == "x":
				var x = load("res://assets/alphabet/x.glb")
				var xspawn = x.instantiate()
				xspawn.position = letterPos
				add_child(xspawn)
				letterNum += 1
				
			if letter == "y":
				var y = load("res://assets/alphabet/y.glb")
				var yspawn = y.instantiate()
				yspawn.position = letterPos
				add_child(yspawn)
				letterNum += 1
				
			if letter == "z":
				var z = load("res://assets/alphabet/z.glb")
				var zspawn = z.instantiate()
				zspawn.position = letterPos
				add_child(zspawn)
				letterNum += 1
		
			n += 1
		pass
	
	if oneplayerCPUwins == true:
		var c = load("res://assets/alphabet/c.glb")
		var cspawn = c.instantiate()
		cspawn.position = Vector3(-0.9, 0, -1)
		add_child(cspawn)
		
		var p = load("res://assets/alphabet/p.glb")
		var pspawn = p.instantiate()
		pspawn.position = Vector3(-0.3, 0, -1)
		add_child(pspawn)
		
		var u = load("res://assets/alphabet/u.glb")
		var uspawn = u.instantiate()
		uspawn.position = Vector3(0.3, 0, -1)
		add_child(uspawn)
	
	if twoplayerP1wins == true:
		var new_text: String = $secondEdit.get_text().to_lower()
		var n = 0
		var letterNum = 1
		var letterPos: Vector3 = Vector3(0,0,0)
		
		if new_text.length() == 1:
			letterPos = Vector3(0, 0, -1)
		if new_text.length() == 2:
			letterPos = Vector3(-0.3, 0, -1)
		if new_text.length() == 3:
			letterPos = Vector3(-0.6, 0, -1)
		if new_text.length() == 4:
			letterPos = Vector3(-0.9, 0, -1)
		if new_text.length() == 5:
			letterPos = Vector3(-1.2, 0, -1)
		if new_text.length() == 6:
			letterPos = Vector3(-1.5, 0, -1)
		if new_text.length() == 7:
			letterPos = Vector3(-1.8, 0, -1)
		if new_text.length() == 8:
			letterPos = Vector3(-2.1, 0, -1)
		if new_text.length() == 9:
			letterPos = Vector3(-2.4, 0, -1)
		if new_text.length() == 10:
			letterPos = Vector3(-2.7, 0, -1)

		while n < new_text.length():
		
			if letterNum == 2:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 3:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 4:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 5:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 6:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 7:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 8:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 9:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 10:
				letterPos += Vector3(0.6, 0, 0)
			
		
			var letter = new_text[n]
		
			if letter == "a":
				var a = load("res://assets/alphabet/a.glb")
				var aspawn = a.instantiate()
				aspawn.position = letterPos
				add_child(aspawn)
				letterNum += 1
			
			if letter == "b":
				var b = load("res://assets/alphabet/b.glb")
				var bspawn = b.instantiate()
				bspawn.position = letterPos
				add_child(bspawn)
				letterNum += 1
			
			if letter == "c":
				var c = load("res://assets/alphabet/c.glb")
				var cspawn = c.instantiate()
				cspawn.position = letterPos
				add_child(cspawn)
				letterNum += 1
				
			if letter == "d":
				var d = load("res://assets/alphabet/d.glb")
				var dspawn = d.instantiate()
				dspawn.position = letterPos
				add_child(dspawn)
				letterNum += 1
				
			if letter == "e":
				var e = load("res://assets/alphabet/e.glb")
				var espawn = e.instantiate()
				espawn.position = letterPos
				add_child(espawn)
				letterNum += 1
				
			if letter == "f":
				var f = load("res://assets/alphabet/f.glb")
				var fspawn = f.instantiate()
				fspawn.position = letterPos
				add_child(fspawn)
				letterNum += 1
				
			if letter == "g":
				var g = load("res://assets/alphabet/g.glb")
				var gspawn = g.instantiate()
				gspawn.position = letterPos
				add_child(gspawn)
				letterNum += 1
				
			if letter == "h":
				var h = load("res://assets/alphabet/h.glb")
				var hspawn = h.instantiate()
				hspawn.position = letterPos
				add_child(hspawn)
				letterNum += 1
				
			if letter == "i":
				var i = load("res://assets/alphabet/i.glb")
				var ispawn = i.instantiate()
				ispawn.position = letterPos
				add_child(ispawn)
				letterNum += 1
				
			if letter == "j":
				var j = load("res://assets/alphabet/j.glb")
				var jspawn = j.instantiate()
				jspawn.position = letterPos
				add_child(jspawn)
				letterNum += 1
				
			if letter == "k":
				var k = load("res://assets/alphabet/k.glb")
				var kspawn = k.instantiate()
				kspawn.position = letterPos
				add_child(kspawn)
				letterNum += 1
				
			if letter == "l":
				var l = load("res://assets/alphabet/l.glb")
				var lspawn = l.instantiate()
				lspawn.position = letterPos
				add_child(lspawn)
				letterNum += 1
				
			if letter == "m":
				var m = load("res://assets/alphabet/m.glb")
				var mspawn = m.instantiate()
				mspawn.position = letterPos
				add_child(mspawn)
				letterNum += 1
				
			if letter == "n":
				var nLetter = load("res://assets/alphabet/n.glb")
				var nspawn = nLetter.instantiate()
				nspawn.position = letterPos
				add_child(nspawn)
				letterNum += 1
				
			if letter == "o":
				var o = load("res://assets/alphabet/o.glb")
				var ospawn = o.instantiate()
				ospawn.position = letterPos
				add_child(ospawn)
				letterNum += 1
				
			if letter == "p":
				var p = load("res://assets/alphabet/p.glb")
				var pspawn = p.instantiate()
				pspawn.position = letterPos
				add_child(pspawn)
				letterNum += 1
				
			if letter == "q":
				var q = load("res://assets/alphabet/q.glb")
				var qspawn = q.instantiate()
				qspawn.position = letterPos
				add_child(qspawn)
				letterNum += 1
				
			if letter == "r":
				var r = load("res://assets/alphabet/r.glb")
				var rspawn = r.instantiate()
				rspawn.position = letterPos
				add_child(rspawn)
				letterNum += 1
				
			if letter == "s":
				var s = load("res://assets/alphabet/s.glb")
				var sspawn = s.instantiate()
				sspawn.position = letterPos
				add_child(sspawn)
				letterNum += 1
				
			if letter == "t":
				var t = load("res://assets/alphabet/t.glb")
				var tspawn = t.instantiate()
				tspawn.position = letterPos
				add_child(tspawn)
				letterNum += 1
				
			if letter == "u":
				var u = load("res://assets/alphabet/u.glb")
				var uspawn = u.instantiate()
				uspawn.position = letterPos
				add_child(uspawn)
				letterNum += 1
				
			if letter == "v":
				var v = load("res://assets/alphabet/v.glb")
				var vspawn = v.instantiate()
				vspawn.position = letterPos
				add_child(vspawn)
				letterNum += 1
				
			if letter == "w":
				var w = load("res://assets/alphabet/w.glb")
				var wspawn = w.instantiate()
				wspawn.position = letterPos
				add_child(wspawn)
				letterNum += 1
				
			if letter == "x":
				var x = load("res://assets/alphabet/x.glb")
				var xspawn = x.instantiate()
				xspawn.position = letterPos
				add_child(xspawn)
				letterNum += 1
				
			if letter == "y":
				var y = load("res://assets/alphabet/y.glb")
				var yspawn = y.instantiate()
				yspawn.position = letterPos
				add_child(yspawn)
				letterNum += 1
				
			if letter == "z":
				var z = load("res://assets/alphabet/z.glb")
				var zspawn = z.instantiate()
				zspawn.position = letterPos
				add_child(zspawn)
				letterNum += 1
		
			n += 1
		pass
	
	if twoplayerP2wins == true:
		var new_text: String = $thirdEdit.get_text().to_lower()
		var n = 0
		var letterNum = 1
		var letterPos: Vector3 = Vector3(0,0,0)
		
		if new_text.length() == 1:
			letterPos = Vector3(0, 0, -1)
		if new_text.length() == 2:
			letterPos = Vector3(-0.3, 0, -1)
		if new_text.length() == 3:
			letterPos = Vector3(-0.6, 0, -1)
		if new_text.length() == 4:
			letterPos = Vector3(-0.9, 0, -1)
		if new_text.length() == 5:
			letterPos = Vector3(-1.2, 0, -1)
		if new_text.length() == 6:
			letterPos = Vector3(-1.5, 0, -1)
		if new_text.length() == 7:
			letterPos = Vector3(-1.8, 0, -1)
		if new_text.length() == 8:
			letterPos = Vector3(-2.1, 0, -1)
		if new_text.length() == 9:
			letterPos = Vector3(-2.4, 0, -1)
		if new_text.length() == 10:
			letterPos = Vector3(-2.7, 0, -1)

		while n < new_text.length():
		
			if letterNum == 2:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 3:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 4:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 5:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 6:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 7:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 8:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 9:
				letterPos += Vector3(0.6, 0, 0)
			if letterNum == 10:
				letterPos += Vector3(0.6, 0, 0)
			
		
			var letter = new_text[n]
		
			if letter == "a":
				var a = load("res://assets/alphabet/a.glb")
				var aspawn = a.instantiate()
				aspawn.position = letterPos
				add_child(aspawn)
				letterNum += 1
			
			if letter == "b":
				var b = load("res://assets/alphabet/b.glb")
				var bspawn = b.instantiate()
				bspawn.position = letterPos
				add_child(bspawn)
				letterNum += 1
			
			if letter == "c":
				var c = load("res://assets/alphabet/c.glb")
				var cspawn = c.instantiate()
				cspawn.position = letterPos
				add_child(cspawn)
				letterNum += 1
				
			if letter == "d":
				var d = load("res://assets/alphabet/d.glb")
				var dspawn = d.instantiate()
				dspawn.position = letterPos
				add_child(dspawn)
				letterNum += 1
				
			if letter == "e":
				var e = load("res://assets/alphabet/e.glb")
				var espawn = e.instantiate()
				espawn.position = letterPos
				add_child(espawn)
				letterNum += 1
				
			if letter == "f":
				var f = load("res://assets/alphabet/f.glb")
				var fspawn = f.instantiate()
				fspawn.position = letterPos
				add_child(fspawn)
				letterNum += 1
				
			if letter == "g":
				var g = load("res://assets/alphabet/g.glb")
				var gspawn = g.instantiate()
				gspawn.position = letterPos
				add_child(gspawn)
				letterNum += 1
				
			if letter == "h":
				var h = load("res://assets/alphabet/h.glb")
				var hspawn = h.instantiate()
				hspawn.position = letterPos
				add_child(hspawn)
				letterNum += 1
				
			if letter == "i":
				var i = load("res://assets/alphabet/i.glb")
				var ispawn = i.instantiate()
				ispawn.position = letterPos
				add_child(ispawn)
				letterNum += 1
				
			if letter == "j":
				var j = load("res://assets/alphabet/j.glb")
				var jspawn = j.instantiate()
				jspawn.position = letterPos
				add_child(jspawn)
				letterNum += 1
				
			if letter == "k":
				var k = load("res://assets/alphabet/k.glb")
				var kspawn = k.instantiate()
				kspawn.position = letterPos
				add_child(kspawn)
				letterNum += 1
				
			if letter == "l":
				var l = load("res://assets/alphabet/l.glb")
				var lspawn = l.instantiate()
				lspawn.position = letterPos
				add_child(lspawn)
				letterNum += 1
				
			if letter == "m":
				var m = load("res://assets/alphabet/m.glb")
				var mspawn = m.instantiate()
				mspawn.position = letterPos
				add_child(mspawn)
				letterNum += 1
				
			if letter == "n":
				var nLetter = load("res://assets/alphabet/n.glb")
				var nspawn = nLetter.instantiate()
				nspawn.position = letterPos
				add_child(nspawn)
				letterNum += 1
				
			if letter == "o":
				var o = load("res://assets/alphabet/o.glb")
				var ospawn = o.instantiate()
				ospawn.position = letterPos
				add_child(ospawn)
				letterNum += 1
				
			if letter == "p":
				var p = load("res://assets/alphabet/p.glb")
				var pspawn = p.instantiate()
				pspawn.position = letterPos
				add_child(pspawn)
				letterNum += 1
				
			if letter == "q":
				var q = load("res://assets/alphabet/q.glb")
				var qspawn = q.instantiate()
				qspawn.position = letterPos
				add_child(qspawn)
				letterNum += 1
				
			if letter == "r":
				var r = load("res://assets/alphabet/r.glb")
				var rspawn = r.instantiate()
				rspawn.position = letterPos
				add_child(rspawn)
				letterNum += 1
				
			if letter == "s":
				var s = load("res://assets/alphabet/s.glb")
				var sspawn = s.instantiate()
				sspawn.position = letterPos
				add_child(sspawn)
				letterNum += 1
				
			if letter == "t":
				var t = load("res://assets/alphabet/t.glb")
				var tspawn = t.instantiate()
				tspawn.position = letterPos
				add_child(tspawn)
				letterNum += 1
				
			if letter == "u":
				var u = load("res://assets/alphabet/u.glb")
				var uspawn = u.instantiate()
				uspawn.position = letterPos
				add_child(uspawn)
				letterNum += 1
				
			if letter == "v":
				var v = load("res://assets/alphabet/v.glb")
				var vspawn = v.instantiate()
				vspawn.position = letterPos
				add_child(vspawn)
				letterNum += 1
				
			if letter == "w":
				var w = load("res://assets/alphabet/w.glb")
				var wspawn = w.instantiate()
				wspawn.position = letterPos
				add_child(wspawn)
				letterNum += 1
				
			if letter == "x":
				var x = load("res://assets/alphabet/x.glb")
				var xspawn = x.instantiate()
				xspawn.position = letterPos
				add_child(xspawn)
				letterNum += 1
				
			if letter == "y":
				var y = load("res://assets/alphabet/y.glb")
				var yspawn = y.instantiate()
				yspawn.position = letterPos
				add_child(yspawn)
				letterNum += 1
				
			if letter == "z":
				var z = load("res://assets/alphabet/z.glb")
				var zspawn = z.instantiate()
				zspawn.position = letterPos
				add_child(zspawn)
				letterNum += 1
		
			n += 1
		pass
	
	if Global.playeronescore == 1 && only_once:
		
		score1spawn.position = Vector3(-0.5, 1.1, -0.01)
		add_child(score1spawn)
		only_once = false
		
		
	if Global.playeronescore == 2 && only_once2:
		
		score2spawn.position = Vector3(-0.5, 1.1, -0.01)
		add_child(score2spawn)
		only_once2 = false
		
	if Global.playeronescore == 3 && only_once3:
		
		score3spawn.position = Vector3(-0.5, 1.1, -0.01)
		add_child(score3spawn)
		only_once3 = false
		
	if Global.playeronescore == 4 && only_once4:
		
		score4spawn.position = Vector3(-0.5, 1.1, -0.01)
		add_child(score4spawn)
		only_once4 = false
		
	if Global.playeronescore == 5 && only_once5:
		
		score5spawn.position = Vector3(-0.5, 1.1, -0.01)
		add_child(score5spawn)
		only_once5 = false
		
	if Global.playeronescore == 6 && only_once6:
		
		score6spawn.position = Vector3(-0.5, 1.1, -0.01)
		add_child(score6spawn)
		only_once6 = false
		
	if Global.playeronescore == 7 && only_once7:
		
		score7spawn.position = Vector3(-0.5, 1.1, -0.01)
		add_child(score7spawn)
		only_once7 = false
		
		
		
	if Global.playertwoscore == 1 && only2_once:
		
		score1spawn.position = Vector3(1.5, 1.1, -0.01)
		add_child(score1spawn)
		only2_once = false
		
	if Global.playertwoscore == 2 && only2_once2:
		
		score2spawn.position = Vector3(1.5, 1.1, -0.01)
		add_child(score2spawn)
		only2_once2 = false
		
	if Global.playertwoscore == 3 && only2_once3:
		
		score3spawn.position = Vector3(1.5, 1.1, -0.01)
		add_child(score3spawn)
		only2_once3 = false
		
	if Global.playertwoscore == 4 && only2_once4:
		
		score4spawn.position = Vector3(1.5, 1.1, -0.01)
		add_child(score4spawn)
		only2_once4 = false
		
	if Global.playertwoscore == 5 && only2_once5:
		
		score5spawn.position = Vector3(1.5, 1.1, -0.01)
		add_child(score5spawn)
		only2_once5 = false
		
	if Global.playertwoscore == 6 && only2_once6:
		
		score6spawn.position = Vector3(1.5, 1.1, -0.01)
		add_child(score6spawn)
		only2_once6 = false
		
	if Global.playertwoscore == 7 && only2_once7:
		
		score7spawn.position = Vector3(1.5, 1.1, -0.01)
		add_child(score7spawn)
		only2_once7 = false
		
func _on_button_pressed():
	oneplayer = true
	remove_child(titlespawn)
	pass # Replace with function body.
	
func _on_button_2_pressed():
	twoplayer = true
	remove_child(titlespawn)
	pass # Replace with function body.


