local engine={}

--modules
engine.camera = require("camera")
engine.class = require("class")
engine.debug = require("debug")
engine.input = require("input")
engine.state = require("state")
engine.save = require("save")
engine.timing = require("timing")


--containers
engine.projectiles={}
engine.enemies={}
engine.items={}
engine.players={}
engine.characters={}
engine.states={}
engine.classes=class.classes

--callbacks
engine.update=function(dt)
    timing.update(dt)

end

--global values
