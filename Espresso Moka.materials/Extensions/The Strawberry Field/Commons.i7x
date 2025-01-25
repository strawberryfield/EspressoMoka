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
Understand the command "out" as something new.
Understand "escape" or "away" or "out" or "go away" as escaping.
Carry out escaping:
	if the player is enclosed by a container or the player is enclosed by a supporter:
		try exiting;
	otherwise:
		try going outside.
	
Chapter Smell and Taste

Section Smelling

A thing has some text called the scent-description.

The scent-description of a person is usually "deodorant".

Instead of smelling something:
	if the scent-description of the noun is "":
		if the noun is r-abstract:
			say "There's hardly any odour to [the noun].";
		else:
			say "[regarding the noun][They] [smell] as I would have expected.";
	otherwise:
		say "[regarding the noun][They] [smell] like [scent-description of the noun]. [/p]".

Section Tasting

A thing has some text called the flavor-description.

Instead of tasting something:
	if the flavor-description of the noun is "":
		if the noun is r-abstract:
			say "There's not enough there to provide much flavour.";
		else:
			say "[regarding the noun][They] [taste] as I would have expected.";
	otherwise:
		say "[flavor-description of the noun]. [/p]".

Instead of tasting something which is not edible:
	if the noun is a person:
		say "That would be unpleasantly intimate.";
	otherwise:
		say "[one of]I have an aversion to licking things that aren't meant for human consumption.[or]Doesn't that seem kind of germy?[or]Ew.[at random]".

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
Carry out using: say "[We] will have to be more specific about your intentions with [the noun]."

Understand "use [a door]" as opening. 
Understand "use [an open door]" as entering.
Understand "approach [a door]" as entering.

Understand "vomit" or "throw up" or "puke" or "barf" as a mistake ("[We] may feel a bit ill, but I don't think that's necessary.").

Understand "man" or "gentleman" or "guy" or "dude" or "boy" as a man. 
Understand "girl" or "gal" or "woman" or "lady" as a woman.

Chapter Blocking take all

Rule for deciding whether all includes a thing when taking: it does not.
Rule for deciding whether all includes a thing when removing from: it does not.
Rule for printing a parser error when the latest parser error is the nothing to do error:
	say “Don't be a hoarder, just take what you plan to use.”.
	
Chapter Dancing and singing

Dancing is an action applying to nothing.
Understand "Dance" as dancing.
Report dancing: say "[We] [aren't] a dancer.".
Check an actor dancing:
	if the actor is enclosed by something (called the seat):
		say "(first leaving [the seat])";
		silently try getting off the seat.
 
Singing is an action applying to nothing.
Understand "Sing" as singing.
Report singing: say "[We] [are] not particularly in tune.".
Check singing:
	if the location of the player contains people which are not the player, say "Someone could not like it." instead.

Chapter Stealing

Stealing is an action applying to one thing.
Understand "steal all/every/any/-- [something]" as stealing.
Understand "steal all/everything/anything/--" as stealing.
Report stealing: 
	say "[one of]Naughty, don't do that[or]I call the security service[at random]!".
Understand the command "stole" or "rob" as "steal".
Rule for supplying a missing noun while stealing (this is the indefinite stealing rule):
    now the noun is the location. 
	
Chapter Special says

To say times of (N - a number): say " for the [ordinal of N] time".
To say other times of (N - a number):
	if N is greater than 1, say times of N.
	
Chapter Sanity check

The sanity-check rules are a rulebook.

This is the sanity-check stage rule:
	abide by the sanity-check rules.

The sanity-check stage rule is listed before the before stage rule  in the action-processing rules.

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

Understand "go back" as retreating. 
Understand "back" or "return" or "retreat" as retreating.

The former direction is a direction that varies.

Carry out going:
	if the noun is a direction:
		now the former direction is the noun.

Retreating is an action applying to nothing.

Carry out retreating:
	let new direction be the opposite of the former direction;
	say "(heading [new direction])[/ccb]";
	try going the new direction.

Chapter Go forward

Going forward is an action applying to nothing.
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

Understand "[any room]" as going by name. 
Understand "go to/into/-- [any room]" as going by name.
Understand "enter in/into/-- [any room]" as going by name.

Going by name is an action applying to one thing.
Check going by name:
    if the noun is the location, say "You're already in [the location]." instead;
    if the noun is not adjacent and the noun is unvisited, say "There isn't any [noun] nearby." instead. 

Carry out going by name:
    let aim be the best route from the location to the noun, using doors;
    if aim is not a direction, say "You can't think how to get there from here." instead;
    say "(heading [aim])[/ccb]";
    try going aim;
    if the location is not the noun, say "You'll have to stop here."
	
Chapter Implicit taking

To decide if the player cannot carry (X - a thing) :
	unless the player carries X:
		carry out the implicitly taking activity with X;
		unless the player carries X, decide yes;
	decide no.
	
Chapter Concreteness

A thing can be r-concrete or r-abstract. A thing is usually r-concrete.

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

To waiting space key:
	say "[/p]Please press SPACE to continue.";
	wait for the SPACE key;
	say /n.

Chapter Info

Requesting info is an action out of world.
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
Understand "license note/--" as requesting license.
Understand the command "copyright/legal/licence" as "license".
Report requesting license:
	say "[story title] is copyright (c) [story creation year] [story author].";
	say "Released under Creative Commons BY-NC-SA 4.0 license. [/p]";
	say "[/i]You are free to:[/r] [/n][/b]Share[/r] - copy and redistribute the material in any medium or format[/n][/b]Adapt[/r] - remix, transform, and build upon the material[/n]The licensor cannot revoke these freedoms as long as you follow the license terms. [/p]";
	say "[/i]Under the following terms:[/r] [/n][/b]Attribution[/r] - You must give appropriate credit , provide a link to the license, and indicate if changes were made . You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use. [/n][/b]NonCommercial[/r] - You may not use the material for commercial purposes. [/n][/b]ShareAlike[/r] - If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original. [/n][/b]No additional restrictions[/r] - You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits. [/p]";
	say "[/i]Limitation of Liability[/r][/n]";
	say "To the extent possible, in no event will the Licensor be liable to You on
any legal theory (including, without limitation, negligence) or otherwise
for any direct, special, indirect, incidental, consequential, punitive,
exemplary, or other losses, costs, expenses, or damages arising out of this
Public License or use of the Licensed Material, even if the Licensor has
been advised of the possibility of such losses, costs, expenses, or
damages. [/p]";
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
		
To decide which real number is decimal part of (r - real number):
	decide on r minus integer part of r.
	
To decide which real number is centimes of (r - real number):
	decide on ceiling of (100 times decimal part of r) .
	
To say (r - real number) in euro:
	let E be the integer part of r;
	let C be the centimes of r;
	say "[E to the nearest whole number in words] euro[if C is greater than zero] and [C to the nearest whole number in words] cent[s][end if]".
			
Commons ends here.