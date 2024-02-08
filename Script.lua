--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--


entered = false;
hasSpell = false;
castSpellLib = false;

function story(aName)
	 if(aName == "start") then
	 CLS()
	 setBackground("front.jpg")
     createTextfield ("your are about to rob this house how do you enter?") 
	 createButton("wrong hall","just go through the front door")
	 createButton("study","go through the window")
     end

     if (aName == "study") then
	 CLS()
	 setBackground("studeer.jpg")
	 createTextfield("you enterd a studyhall,what is your next move?")
	 createButton("hall","go through the door")
	 createButton("bureau","search the bureau for some vauable stuff")
	 end

	 if (aName == "wrong hall") then
	 CLS()
	 setBackground("pap.jpg")
     createTextfield("the father caught you red handed en called the police on you!")
	 createButton("renn","RUN")
	 createButton("idiot","surrender")
     end

	 if (aName == "bureau") then
	 CLS()
	 setBackground("kluis3.jpg")
	 createTextfield("you found a lockbox but it's locked, try and find the key")
	 createButton("back","go back")
	 end

	if (aName == "back") then
	CLS()
	setBackground("studeer.jpg")
	createTextfield("nothing usefull in the studyhall")
	createButton("hall","go through the door")
	end

	if (aName == "hall") then
	CLS()
	setBackground("gang.jpg")
	createTextfield("you have enterd the hall, make a option")
	createButton("door one","go through door one")
	createButton("door two","go through door two")
	createButton("stairs","go up the stairs")
	end
   
	if (aName == "door one") then
	CLS()
	setBackground("keuken.jpg")
    createTextfield("you have enterd the kitchen, what do you do next?")
    createButton("refigderator","check the refigderator")
    createButton("laundry","go into the laundry room")
    createButton("hall","go back to the hall")
	end

	if(aName == "laundry") then
	CLS()
	setBackground("moeder.jpg")
	createTextfield("the mother was doing the laundry, she called the cops on you!")
	createButton("renn","RUN")
	createButton("idiot","surrender")
	end

	if(aName == "refigderator") then
	CLS()
	setBackground("koelkast3.jpg")
	createTextfield("why the refigderator?")
	createButton("door one","go back")
	end

    if (aName == "door two") then
	CLS()
	setBackground("woonkamer2.jpg")
	createTextfield("you have entert the living room")
	createButton("couch","check the couch")
	createButton("hall","go back to the hall")
	end

    if(aName == "couch") then
	CLS()
	setBackground("pap.jpg")
	createTextfield("you woke the dad,he called the cops!")
	createButton("renn","RUN")
	createButton("idiot","surrender")
	end

	
	if(aName == "stairs") then 
	CLS()
	setBackground("overloop.jpg")
	createTextfield("your upstairs with a couple of options")
	createButton("right","go into the room on your right")
	createButton("left","go into the room on your left")
	createButton("forward","go into the room infront of you")
	createButton("hall2","go back")
    end
 
	if( aName == "right") then
	CLS()
	setBackground("slaapkamer.jpg")
	createTextfield("you have enterd the parents bedroom")
	createButton("stairs","go back")
	createButton("bed","take a closer look at the bed")
	end

	if(aName == "left") then 
	CLS()
	setBackground("badkamer.jpg")
	createTextfield("you have enterd the bathroom")
	createButton("stairs","go back")
	createButton("shower","go and take a warm shower")
	end

    if(aName == "shower") then
    CLS()
    createTextfield("don't be stupid, that would alarm the owners")
    createButton("stairs","go back")
    end

    if(aName == "forward") then
    CLS()
	setBackground("donker.jpg")
    createTextfield("you enterd a dark room")
    createButton("turnon","turn on the lamp")
    createButton("stairs","go quietly back")
    end
   
    if(aName == "turnon") then
    CLS()
	setBackground("bang.jpg")
    createTextfield(" you woke up the cild!, it starts screaming")
    createButton("idiot","surrender")
    createButton("runn","run!")
    end

    if(aName == "bed") then
    CLS()
    createTextfield("what is that?")
    createButton("pillow","look under that pillow")
    end

    if(aName == "pillow") then
    CLS()
    createTextfield("you found a key! where can i use it?")
    createButton("hall2","go back")
    end

     if (aName == "hall2") then
	 CLS()
	 setBackground("gang.jpg")
	 createTextfield("you have enterd the hall, make a option")
	 createButton("door one","go through door one")
	 createButton("door two","go through door two")
	 createButton("stairs","go up the stairs")
	 createButton("study2","go back to the studyhall")
	 end

	 if (aName =="study2") then
	 CLS()
	 setBackground("studeer.jpg")
	 createTextfield("your in the studyhall")
     createButton("burbur","go back to the bureau")
     end

     if(aName =="burbur") then
	 CLS()
	 setBackground("kluis3.jpg")
     createButton("lockbox","open the lockbox")
     end

	 if(aName =="lockbox") then
	 CLS()
	 setBackground("ring.jpg")
	 createTextfield("you have found a diamond ring")
	 createButton("getout","get the hell out of here")
	 end

	 if(aName =="getout") then
	 CLS()
	 setBackground("studeer.jpg")
	 createTextfield("you got what you want, maybe get out of there")
	 createButton("getaway","GET THE HELL OUT OF HERE")
     end

     if(aName =="getaway") then
	 CLS()
	 setBackground("front.jpg")
	 createTextfield("GET OUT")
	 createButton("OUT","GET OUT")
     end

	 if(aName =="idiot") then
	 CLS()
	 setBackground("gepakt,jpg")
	 createTextfield("you surrenderd and the police came to get you...")
	 exitGame()
	 end

	 if(aName == "renn") then
	 CLS()
	 setBackground("tuin.jpg")
	 createTextfield("you made it into the garden but tripped what now?!")
	 createButton("idiot","surrender")
	 createButton("hide","hide!")
	 end

	 if(aName == "hide") then
	 CLS()
	 setBackground("bos.jpg")
	 createTextfield("you hided for the police but they coudn't find you'")
	 exitgame()
	 end

	 if(aName =="OUT") then
	 CLS()
	 setBackground("front.jpg")
	 createTextfield("you escaped! good4you")
	 exitGame()
	 end
end