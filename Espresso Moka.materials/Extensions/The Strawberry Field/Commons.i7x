Version 1.1 of Commons by The Strawberry Field begins here.

[
Commons © 2025 by Roberto Ceccarelli - The Strawberry Field 
is licensed under CC BY-NC-SA 4.0. 
To view a copy of this license, 
visit https://creativecommons.org/licenses/by-nc-sa/4.0/

Commons by The Strawberry Field is free software: 
you can redistribute it and/or modify it
under the terms of the Creative Commons BY-NC-SA license.

Commons is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the license for more details.
]

Include Verbs by The Strawberry Field.

Book Typoghraphy

Chapter Shortenings

To say /n: say line break.
To say /nn: say no line break.
To say /p: say paragraph break.
To say /run: say run paragraph on.
To say /ccb: say command clarification break.
To say /b: say bold type.
To say /i: say italic type.
To say /r: say roman type.
To say /f: say fixed letter spacing.
To say --: say unicode 8212.

To say /ss: say "[/i]'".
To say /ss1: say "[unicode 8212] [/i]'".
To say /se: say "[/r][unicode 8212] ".

To say /warning: say "[unicode 9888] ".

Book Rules

Rule for clarifying the parser's choice of something:
	do nothing instead.
	
After reading a command:
	repeat with word running through {"sex","fuck","shag ","bang ","dick ","penis","pussy","cunt ","vagina"}:
		if the player's command matches the text word:
			say "The game does not include references to sex.";
			reject the player's command. 
	
Chapter Movements

Escaping is an action applying to nothing.
The escaping action translates into Inter as "Escape".
Understand the command "out" as something new.
Understand "escape" or "away" or "out" or "go away" as escaping.
Carry out escaping:
	if the player is enclosed by a container or the player is enclosed by a supporter, try exiting;
	otherwise try going outside.
	
Chapter Smell, Taste and Listening

Section Smelling

An object has some text called the scent-description.
The scent-description property translates into Inter as "Scent_Description".

The scent-description of a person is usually "deodorant".

Instead of smelling:
	if the scent-description of the noun is empty:
		if the noun is r-abstract, say "There's hardly any odour to [the noun].";
		otherwise say "[one of][We] [don't] smell anything in particular[or][We] [smell] nothing special[or][regarding the noun][They] [smell] as [we] would have expected[at random].";
	otherwise:
		say "[regarding the noun][They] [smell] like [scent-description of the noun]."

Section Listening

Understand "listen [something]" as listening to.
Understand "hear" as listening to.

An object has some text called the sound-description.
The sound-description property translates into Inter as "Sound_Description".
An object can be sounding or mute. An object is usually mute.
A thing is usually sounding.
A room is usually sounding.

Instead of listening to:
	if the noun is the player, say "You are not used to talking to yourself." instead;
	if the noun is a person, say "[regarding the noun][They] [one of][are] not talking[or][are] silent[or][are] not saying anything[at random]." instead;
	if the noun is mute, say "[regarding the noun][They] [one of][are] silent[or][do] not produce any sound[or][make] no sound[at random]." instead;
	if the sound-description of the noun is empty, say "[one of][We] [don't] hear anything in particular[or][We] [hear] nothing special[or][regarding the noun][They] [sound] as [we] would have expected[at random].";
	otherwise say "[We] [one of][hear][or][listen][at random] [sound-description of the noun]."

Section Tasting

A thing has some text called the flavor-description.
The flavor-description property translates into Inter as "Flavor_description".

Instead of tasting:
	if the flavor-description of the noun is empty:
		if the noun is r-abstract, say "There's not enough there to provide much flavour.";
		otherwise say "[regarding the noun][They] [taste] as [we] would have expected.";
	otherwise:
		say "[flavor-description of the noun]."

Instead of tasting something which is not edible:
	if the noun is a person, say "That would be unpleasantly intimate.";
	otherwise say "[one of]I have an aversion to licking things that aren't meant for human consumption[or]This does not seem appropriate[or]I'm sorry, but this doesn't seem right[at random]."

Understand "bite [someone]" as attacking.

Understand "bite [something]" as tasting.

Chapter Aliases

Understand "look around" as looking.  
Understand "climb on [something]" as climbing.
Understand "check out [something]" as examining.
Understand "sit down on/-- [something]" as entering.

Understand "use [an edible thing]" as eating.
Understand "use [a wearable thing]" as wearing.

Understand "use [a closed openable container]" as opening. 
Understand "use [an open openable container]" as closing.

Understand "use [something preferably held] on [a locked lockable thing]" as unlocking it with (with nouns reversed). 
Understand "use [something preferably held] on [an unlocked lockable thing]" as locking it with (with nouns reversed).

Understand "use [a switched off device]" as switching on.

Understand "use [something]" as using. 
Using is an action applying to one thing. 
Carry out using (this is the generic using rule): say "[We] will have to be more specific about your intentions with [the noun]."

Understand "use [a door]" as opening. 
Understand "use [an open door]" as entering.
Understand "approach [a door]" as entering.

Understand "vomit" or "throw up" or "puke" or "barf" as a mistake ("[We] may feel a bit ill, but I don't think that's necessary.").

Understand "man" or "gentleman" or "guy" or "dude" or "boy" as a man. 
Understand "girl" or "gal" or "woman" or "lady" as a woman.

Understand the command "place" as "put".

Understand "drop [something] in/into/down [something]" as inserting it into.
Understand "drop [other things] on/onto [something]" as putting it on.

Chapter Blocking take all

Rule for deciding whether all includes a thing when taking: it does not.
Rule for deciding whether all includes a thing when removing from: it does not.
Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "Don't be a hoarder, just take what you plan to use.".
	
Chapter Dancing and singing

Dancing is an action applying to nothing.
The dancing action translates into Inter as "Dance".
Understand "Dance" as dancing.
Report dancing (this is the report dancing rule): say "[We] [aren't] a dancer.".
Check an actor dancing:
	if the actor is enclosed by something (called the seat):
		say "(first leaving [the seat])";
		silently try getting off the seat.
 
Singing is an action applying to nothing.
The singing action translates into Inter as "Sing".
Understand "Sing" as singing.
Report singing (this is the report singing rule): say "[We] [are] not particularly in tune.".
Check singing (this is the check singing rule):
	if the location of the player contains people which are not the player:
		say "Someone could not like it." (A);
		stop the action.

Chapter Stealing

Stealing is an action applying to one thing.
The stealing action translates into Inter as "Steal".
Understand "steal all/every/any/-- [something]" as stealing.
Understand "steal all/everything/anything/--" as stealing.

Report stealing (this is the report stealing rule): say "[one of]Naughty, don't do that[or]I call the security service[at random]!".

Understand the command "stole" or "rob" as "steal".
Rule for supplying a missing noun while stealing (this is the indefinite stealing rule):
    now the noun is the location. 

Chapter Scolding

Scolding is an action applying to one thing.
The scolding action translates into Inter as "Scold".
Understand "scold [something]" as scolding.
Understand the command "rebuke" or "reprimand" or "reproach" as "scold".

Check scolding (this is the check scolding rule): 
	unless the noun is a person:
		say "It can't hear you anyway." (A);
		stop the action.
		
Report scolding (this is the report scolding rule): say "There [are] no reason to scold [regarding the noun][them]."

Chapter Laughing

Laughing is an action applying to nothing.
The laughing action translates into Inter as "Laugh".
Understand "laugh" as laughing.

Report laughing (this is the report laughing rule): say "[one of]He who laughs last laughs loudest[or]Risus abundat in ore stultorum[at random].".

Chapter Swiping

Swiping is an action applying to one thing.
The swiping action translates into Inter as "Swipe".
Understand "swipe [something preferably held]" as swiping.

Report swiping (this is the report swiping rule): say "[We] [swipe] [the noun]."

Section Swiping at 

Swiping it at is an action applying to two things.
The swiping it at action translates into Inter as "SwipeAt".
Understand "swipe [something preferably held] on/at/in [something]" as swiping it at.

Report swiping it at (this is the report swiping a thing at rule): say "[We] [swipe] [the noun] at [the second noun]."
	
Chapter Special says

To say times of (N - a number): say " for the [ordinal of N] time".
To say other times of (N - a number): if N is greater than 1, say times of N.
	
Chapter Sanity check

The sanity-check rules are a rulebook.

This is the sanity-check stage rule:
	abide by the sanity-check rules.

The sanity-check stage rule is listed before the before stage rule in the action-processing rules.

Section Basic sanity-check rules

Sanity-check inserting something (called the holder) into something which is enclosed by the holder:
	say "[We] can't put [the holder] into [themselves]." instead.

Sanity-check putting something (called the holder) on something which is enclosed by the holder:
	say "[We] can't put [the holder] on [themselves]." instead.

Sanity-check inserting something (called the target) into the target:
	say "[We] can't put [the target] into [themselves]." instead.

Sanity-check inserting something in a container (called the target) into the target:
	say "[The noun] [are] in [the target] already." instead.

Sanity-check putting something (called the source) on a supporter (called the target) when the source is on the target:
	say "[The source] [are] on [the target] already." instead.

Sanity-check searching a person:
	say "That might well be resented." instead.

Sanity-check opening a person:
	say "I'm not sure what you're imagining, but I at least am no surgeon." instead.

Sanity-check eating a person:
	say "Are you a cannibal?" instead.
	
Sanity-check closing a person:
	say "I don't understand how that could be a meaningful action." instead.

Sanity-check searching the player:
	try taking inventory instead.

Chapter Go back

Retreating is an action applying to nothing.
The retreating action translates into Inter as "Retreat".
Understand "go back" as retreating. 
Understand "back" or "return" or "retreat" as retreating.

The former direction is a direction that varies.

Carry out going: if the noun is a direction, now the former direction is the noun.

Carry out retreating:
	let new direction be the opposite of the former direction;
	say "(heading [new direction])[/ccb]";
	try going the new direction.

Chapter Go forward

Going forward is an action applying to nothing.
The going forward action translates into Inter as "GoForward".
Understand "go forward/ahead/straight" as going forward.
Understand "forward" or "ahead" or "straight" as going forward.
Carry out going forward:
	say "(heading [former direction])[/ccb]";
	try going the former direction.

Rule for supplying a missing noun while an actor going (this is the custom vaguely going rule):
	say "(heading [former direction])[/ccb]";
	now the noun is the former direction.

The custom vaguely going rule is listed instead of the block vaguely going rule in the for supplying a missing noun rulebook.

Chapter Go to named room

Going by name is an action applying to one thing.
The going by name action translates into Inter as "GoByName".

Understand "[any room]" as going by name. 
Understand "go to/into/-- [any room]" as going by name.
Understand "enter in/into/-- [any room]" as going by name.

Check going by name (this is the check going by name rule):
    if the noun is the location, say "You're already in [the location]." (A) instead;
    if the noun is not adjacent and the noun is unvisited, say "There isn't any [noun] nearby." (B) instead. 

Carry out going by name (this is the carry out going by name rule):
    let aim be the best route from the location to the noun, using doors;
    if aim is not a direction, say "You can't think how to get there from here." (A) instead;
    say "(heading [aim])[/ccb]";
    try going aim;
    if the location is not the noun, say "You'll have to stop here." (B).
	
Chapter Implicit taking

To decide if the player cannot carry (X - a thing):
	unless the player carries X:
		carry out the implicitly taking activity with X;
		unless the player carries X, decide yes;
	decide no.
	
Chapter Implicit exiting

To implicitly exiting (X - an enterable thing):
	if the player is enclosed by X:
		say "(first leaving the [X])[/ccb]";
		silently try the player exiting.
		
To decide if the player cannot leave (X - an enterable thing):
	if the player is enclosed by X:
		implicitly exiting X;
		if the player is enclosed by X, decide yes;
	decide no.
	
Chapter Concreteness

An object can be r-concrete or r-abstract. 
A thing is usually r-concrete.
A room is usually r-concrete.

Sanity-check rubbing or squeezing or touching or waving or pulling or pushing or turning or climbing an r-abstract thing:
	say "[The noun] [are] not really solid enough to treat that way. Might as well be [one of]dandelion fluff[or]pipe smoke[or]a hologram[or]a 3D image[or]mist[or]a cloud of vapor[at random]." instead.

Sanity-check eating or drinking or tasting an r-abstract thing:
	say "[The noun] [are] too abstract to offer sustenance." instead.
Sanity-check pushing an r-abstract thing to a direction:
	say "[The noun] [aren't] solid enough for that kind of treatment." instead.
Sanity-check switching on or switching off an r-abstract thing:
	if the noun is a device:
		make no decision;
	say "[The noun] [aren't] literally a projection; [they] [are] more of a concept created by the group mind of this language community. Sort of. [We] think. At any rate, [they] [don't] switch on and off." instead.

Book Owner

A thing has an object called owner. The owner is usually nothing.
The owner property translates into Inter as "Thing_owner".

Definition: a thing is owned unless the owner of it is nothing.

Instead of doing anything other than examining to something while the noun is owned:
	say "[The noun] [belong] to [the owner of the noun]."
	
Does the player mean taking an owned thing: it is unlikely.
Does the player mean inserting an owned thing into: it is unlikely.
Does the player mean putting an owned thing on: it is unlikely.
Does the player mean eating an owned thing: it is unlikely.
Does the player mean drinking an owned thing: it is unlikely.

Book Administrivia

Figure cover is the file "Cover.jpg".

To wait space key:
	say "[/p]Please press SPACE to continue.";
	wait for the SPACE key;
	say /n.

Chapter Banner

Story license is a text that varies.

After printing the banner text: unless the story license is empty, say "Released under [story license] license[/n]".
	
Chapter Info

Requesting info is an action out of world.
The requesting info action translates into Inter as "Info".
Understand "about the/this/-- story/game/--" as requesting info.
Understand the command "info" as "about".

Report requesting info:
	say "[banner text]";
	display the Figure cover;
	say "[/i][story description][/r][/p]Type [/b]credits[/r] or [/b]license[/r] for more info.".
	
Chapter Credits

Table of credited peoples
Name (text)	Reason (text)
""	""

Requesting credits is an action out of world.
The requesting credits action translates into Inter as "CreditsList".
Understand "credits list/--" as requesting credits.
Understand the command "acknowledgment/acknowledgments/acknowledgement/acknowledgements/thanksgiving" as "credits".
Report requesting credits:
	say "This program make use of the following extensions: [/n][the complete list of extension credits][/n]";
	say "Thanks are also due to the following people: [/n]";
	repeat through the Table of credited peoples:
		unless name entry is empty, say "[name entry] [reason entry][/n]";
	say "[/p]Type [/b]license[/r] or [/b]about[/r] for more info.".
	
Chapter License

Requesting license is an action out of world.
The requesting license action translates into Inter as "LicenseInfo".
Understand "license note/--" as requesting license.
Understand the command "copyright/legal/licence" as "license".
Report requesting license:
	say "[story title] is copyright (c) [story creation year] [story author].";
	say "Released under Creative Commons BY-NC-SA 4.0 license. [/p]";
	say "[/i]You are free to:[/r] [/n][/b]Share[/r] - copy and redistribute the material in any medium or format[/n][/b]Adapt[/r] - remix, transform, and build upon the material[/n]The licensor cannot revoke these freedoms as long as you follow the license terms. [/p]";
	say "[/i]Under the following terms:[/r] [/n][/b]Attribution[/r] - You must give appropriate credit , provide a link to the license, and indicate if changes were made . You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use. [/n][/b]NonCommercial[/r] - You may not use the material for commercial purposes. [/n][/b]ShareAlike[/r] - If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original. [/n][/b]No additional restrictions[/r] - You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.";
	wait space key;
	say "[/i]Limitation of Liability[/r][/n]";
	say "To the extent possible, in no event will the Licensor be liable to You on
any legal theory (including, without limitation, negligence) or otherwise
for any direct, special, indirect, incidental, consequential, punitive,
exemplary, or other losses, costs, expenses, or damages arising out of this
Public License or use of the Licensed Material, even if the Licensor has
been advised of the possibility of such losses, costs, expenses, or
damages.";
	wait space key;
	say "[/i]Disclaimer for the Fiction[/r][/n]";
	say "This is a work of fiction. Unless otherwise indicated, all the names,
characters, businesses, places, events and incidents in this book are
either the product of the author’s imagination or used in a fictitious
manner. Any resemblance to actual persons, living or dead, or actual
events is purely coincidental.";
	say "[/p]Type [/b]credits[/r] or [/b]about[/r] for more info.".

Book Notes

Understand "* [text]" as a mistake ("Noted.").		

Book Prices

To decide which real number is integer part of (r - real number):
	if r is greater than zero, decide on floor of r;
	otherwise:
		decide on ceiling of r.
		
To decide which real number is decimal part of (r - real number): decide on r minus integer part of r.
	
To decide which real number is cent of (r - real number): decide on ceiling of (100 times decimal part of r) .

To say (N - a real number) with fixed decimal:
	let E be the integer part of N to the nearest whole number;
	let C be the cent of N to the nearest whole number;
	say "[E].[no line break][if C < 10]0[end if][C]".
		
To say (r - real number) in euro:
	let E be the integer part of r;
	let C be the cent of r;
	say "[E to the nearest whole number in words] euro[if C is greater than zero] and [C to the nearest whole number in words] cent[s][end if]".
			
			
Book String alignment

To say repeat (C - some text) for (N - a number) times:
	repeat with X running from 1 to N:
		say C.	

To say (N - a number) spaces: say repeat " " for N times.
			
To say (string - some text) right aligned in (S - a number) characters: say "[S minus the number of characters in string spaces][string]".

To say (N - a real number) right aligned in (S - a number) characters: say "[N with fixed decimal]" right aligned in S characters.

To say (string - some text) left aligned in (S - a number) characters: say "[string][S minus the number of characters in string spaces]".

To say (string - some text) centered in (S - a number) characters:
	let total fill be S minus the number of characters in string;
	let left fill be total fill divided by 2;
	say "[left fill spaces][string][total fill minus left fill spaces]".
			

Commons ends here.