-- Title: Interacting Objects 2
-- Name: Tristan Royer
-- Course:Ics2o/3C

--Hide status bar
display.setStatusBar(display.HiddenStatusBar

-- load physics
local physics = require("physics")

-- start Physics
physics.start()

-------------------------------------------------------------------
--Objects
-------------------------------------------------------------------
-- wall
local wall = display.newImage("Physics/beam.png"0,0)

wall.x = 
wall.y = 

wall.height = display.contentHeight

wall:rotate(90)
-- Ground
local ground = display.newImage("Physics/ground.png",0,0)

--set the x and y pos
ground.x = display.contentCenterX
ground.y = display.contentHeight

-- Change the width to be the same as the screen
ground.width = display.contentWidth

-- Add to Physics
Physics.addBody(wall,"static", {friction=0.5, bounce=0.8})

-- Add to Physics
Physics.addBody(ground,"static", {friction=0.5, bounce=0.5})

-- create a verticle beam
local beam = display.newImage("Physics/beam.png", 0, 0)

-- set the x and y pos
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

--set the beam size
beam.width = display.contentCenter/2
beam.height = display.contentHeight/10

--rotate the beam -60 degrees so its on an angle
beam:rotate(45)

--send it to the back layer
beam:toBack()

--add to physics
physics.addBody(beam, "static", {friction=0.5,bounce=0.3})

--create bkg
local bkg = display.newImage("physics/bkg.png",0,0)

-- set the x and y post
bkg.x = display.contentCenterX
bkg.y = display.contentCenterY

-- set the bkg size
bkg.width = display.contentWidth
bkg.Height = display.contentHeight

-- send to back
bkg:toBack()

---------------------------------
--Functions
---------------------------------

-- create the first ball
local function firstBall()
	--creating first ball
	local ball1 = display.newImage("Physics/super_ball.png",0,0)

	--add to physics
	physics.addBody(ball2, {density=1.0, friction=0.9,bounce=0.3,radius=25})
end

local function secondBall()
	--creating second ball
	local ball2 = display.newImage("Physics/super_ball.png",0,0)

	--adding to physics
	physics.addBody(ball2, {density=1.0, friction=0.5,bounce=0.3,radius=12.5})

	--make it smaller than the original size
	ball2:scale(0.5,0.5)
end

local function thirdBall()
	--creating third ball
	local ball3 = display.newImage("Physics/super_ball.png",0,0)

	--adding to physics
	physics.addBody(ball3, {density=1.0, friction=0.5,bounce=0.3,radius=12.5})


	--make it smaller than the original size
	ball3:scale(0.2,0.2)
--------------------
--Timer Delays - call each function after the given millisecond
--------------------
timer.performWithDelay(0,firstBall)
timer.performWithDelay( 500, secondBall)