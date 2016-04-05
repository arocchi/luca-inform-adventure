"Luca and the Inform Compiler" by Alessio

The release number is 3. The story creation year is 2010. The story headline is "Luca and the Inform Compiler". The story genre is "Science Fiction". The story description is "An adventure about Interactive Fiction Adventures".

Chapter 1 - The Studio

The Studio is a room. "The studio is messed up, still quite clean. The only forniture in the room is a bed, and a table with a comfortable chair in front of it. There is a window on the north wall, and a door south."

When play begins: say "You wake up in your studio. You feel tired. Sun is coming from the window."
At 9:15 AM:
    say "You start getting anxious. You feel locked."

At 9:30 AM:
    say "Is where even a way out? You would like to throw stuff around".

Section 1 - Exits - knocking, searching

The door to the stairs is a door.
The description of it is "You don't see anything strange in the door. There is no key in the tap."
It is locked. 
It is south of the Studio.
Instead of opening or entering the door to the stairs, say "The door seems locked from the outside."
Instead of knocking on the door to the stairs, say "You hear a deaf sound, barely udible. The door vibrates oddly."
Instead of searching  the door to the stairs, say "You try to spy from inside the tap. You see only black."

Understand "smash the door" as knocking on.
Understand "kick the door" as knocking on.
Understand "punch the door" as knocking on.

The window is a door.
The description of it is "The window leads to the balcony. The shutter is completely open. I must have forgot to close them before going to sleep."
It is locked. 
It is north of the Studio and south of the Balcony.
Instead of going through the closed window,	say "The window is shut, but the shutter is not. I can clearly see trough the window." 
Instead of opening the locked window, say "Even it seems like you opened the lock, still you can't open the window. A strange force keeps it closed".
Instead of searching the window, say "Outside there is a beautiful morning. The sky is clear, apart from some tiny clouds covering the top of the hills in the distance. You hear birds singing, and the rare noise of cars passing by."



Knocking on is an action applying to one thing. 
Understand "knock on [something]" and "tap on [something]" as knocking on.

Check knocking on:
	if the noun is the player:
		say "Your head makes a hollow sound." instead;
	otherwise if the noun is a person:
		say "That wouldn't be polite." instead.

Report knocking on:
say "You tap gently on [the noun], but nothing happens"



Section 2 - Forniture

The bed is a supporter in the Studio.

The table is a supporter in the Studio.

The chair is an supporter in the Studio. 
The description of it is "Your usual, comfortable chair."
It is not fixed in place.
It is portable.
Instead of throwing the chair at the window:
	say "You try to launch the chair with all your strenght against the window. In the instant it touches the glass, the room gets completely dark";
	end the story saying "You are no more...".


Section 3 - The Manual

The manual is on the table.
The description of it is "Taking a look, you can see it is the Inform Manual. The headline says 'consult me about life and death' You could probably look up anything in it! There seems to be no index though"

Instead of consulting the manual about something:
	say "Flipping through the manual, you learn that [run paragraph on]";
	repeat through Table of Manual Entries: 
		if the topic understood includes topic entry: 
			say "[article entry][paragraph break]"; 
	            		rule succeeds; 
    	say "there's nothing in the encyclopedia on that topic." 


Instead of consulting someone about something:
	say "Does [the noun] look like an encyclopedia?".

Instead of consulting something about something:
	say "[The noun] is not a likely-looking source of information.".

Table of Manual Entries
topic	article
"doors" or "door" or "windows" or "windows" or "unlocking" or "locked" or "locking"	"you can perform an unlocking on an object by typing 'now the noun is unlocked'. For example, to unlock a window, you can type 'now the window is unlocked'. Remember to strip out the quotes, as this is a common error between newcomers"
"life" or "death" or "life and death"	"when life and death are like a snake eating its tail, how to avoid being locked?"


Section 4 - The Laptop is a Computer - Plugging, unplugging, and typing commands

A computer is a kind of thing.
A computer is either plugged or unplugged.
A computer is usually unplugged.

The laptop is a computer. 
It is on the table.
It is plugged.
The description of it is "A shining new Hp Mini. An Inform session is open on it. Nothing is typed in."
Instead of taking the laptop:
	if the laptop is plugged: 
		say "The computer is charging. Unplug it first.".
Instead of unplugging the laptop:
	say "As you unplug the laptop, everything becomes dark.";
	end the story saying "You are no more...".

Table of Available Laptop Commands
topic	article
"now the window is unlocked" 	"you hear a click"

Using is an action applying to one thing. 
Understand "use [something]" as using.
Instead of using the laptop: 
	say "You try to use the Inform compiler, but you don't know what to type. Maybe you should check the manual".

Plugging is an action applying to one thing. 
Understand "plug [something]" as plugging.

Check plugging:
	if the noun is a computer:
		if the noun is plugged:
			say "[the noun] is already plugged" instead;
		otherwise:
			say "you plug the computer to the socket.";
			now the noun is plugged instead;
	otherwise: 
		say "That does not make any sense." instead.

Unplugging is an action applying to one thing. 
Understand "unplug [something]" as unplugging.

Check unplugging:
	if the noun is a computer:
		say "you unplug the computer from the socket.";
		now the noun is not plugged instead;
	otherwise: 
		say "That does not make any sense.".



Typing is an action applying to one topic and one thing. 
Understand "type [text] into [something]" as typing.
Understand "type [text] in [something]" as typing.
Understand "type [text] onto [something]" as typing.
Understand "type [text] on [something]" as typing.
Understand "type [text] over [something]" as typing.

Understand "write [text] into [something]" as typing.
Understand "write [text] in [something]" as typing.
Understand "write [text] onto [something]" as typing.
Understand "write [text] on [something]" as typing.
Understand "write [text] over [something]" as typing.

Understand "command [text] into [something]" as typing.
Understand "command [text] in [something]" as typing.
Understand "command [text] onto [something]" as typing.
Understand "command [text] on [something]" as typing.
Understand "command [text] over [something]" as typing.

Check typing:
	if the second noun is not a computer:
		say "You can not type a command on [the noun]" instead.

Carry out typing:
	if the topic understood is a topic listed in the Table of Available Laptop Commands: 
		say "[article entry][paragraph break]";
		now the window is unlocked;
	otherwise:
		say "As you press keystrokes on the keyboard, you seem to hear them exceptionally loud, as if coming from the outside.".





Chapter 2 - The Balcony

The Balcony is north of the window. "A white void fills everywhere. As your brain freezes your eyes panic searching for something, anything. You fall on the ground, feeling the sound of your breath in the absolute silence."

After entering the Balcony:
	end the story saying "...you are finally free... The game is over.".
	