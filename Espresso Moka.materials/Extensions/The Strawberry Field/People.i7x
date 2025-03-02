Version 1 of People by The Strawberry Field begins here.

[
People © 2024-2025 by Roberto Ceccarelli - The Strawberry Field 
is licensed under CC BY-NC-SA 4.0. 
To view a copy of this license, 
visit https://creativecommons.org/licenses/by-nc-sa/4.0/

People by The Strawberry Field is free software: 
you can redistribute it and/or modify it
under the terms of the Creative Commons BY-NC-SA license.

People is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the license for more details.
]

Include Commons by The Strawberry Field.

Volume Generic people

To say man:
	let the item be the prior named object;
	say "[if the item is a female person]wo[end if]m[if the prior naming context is plural]e[otherwise]a[end if]n".

To say Man:
	let the item be the prior named object;
	say "[if the item is a female person]Wom[otherwise]M[end if][if the prior naming context is plural]e[otherwise]a[end if]n".
	
Book Somatic properties

A person has some text called hair. The hair property translates into Inter as "Person_hair".
A person has some text called eyes. The eyes property translates into Inter as "Person_eyes".
A person has some text called notes. The notes property translates into Inter as "Person_notes".

To say base character description of (p - a person):
	unless hair of p is "" and eyes of p is "":
		say "with ";
		unless hair of p is "":
			say "[hair of p] hair";
			unless eyes of p is "", say " and ";
		unless eyes of p is "", say "[eyes of p] eyes";
	say ". [/n]";
	unless notes of p is "", say "[notes of p]. [/n]";
	say dressing of p;
	say other dressing of p;
	unless p is the player, say carrying of p.

Instead of examining a person: 
	if the description of the noun is "", say "A young [regarding the noun][man] ";
	otherwise say description of the noun;
	say base character description of the noun.
	
Book Dressing

To say dressing of (p - a person):
	unless the number of cloth worn by p is zero, say "[if p is the player][We] [wear][otherwise][regarding p][They] [wear][end if] [a list of cloth worn by p]. [/n]".
	
To say other dressing of (p - a person):
	unless the number of things which are not cloth worn by p is 0, say "[if p is the player][We] also [wear][otherwise][regarding p][They] also [wear][end if] [a list of things which are not cloth worn by p]. [/n]".
	
To say carrying of (p - a person):
	unless the number of things carried by p is zero, say "[if p is the player][We] [are] carrying[otherwise][regarding p][They] [carry][end if] [a list of things carried by p]. [/n]".

A cloth is a kind of thing. 
A cloth is always wearable.
A cloth is usually unlisted when worn.

Instead of taking off a cloth: say "This is not the time to undress."
	
Persuasion rule for asking someone to try getting off a cloth:
	say "[/ss]Does this seem like something to ask?' [/se][regarding the actor][they] [ask] [us] angrily.";
	persuasion fails.

Book actions

Chapter Complimenting

Complimenting is an action applying to one thing.
The complimenting action translates into Inter as "Compliment".

Understand "compliment [something]" as complimenting.
Understand the command "congratulate" as "compliment".

Check complimenting (this is the check complimenting rule): 
	unless the noun is a person, say "I don't think it can handle compliments." (A) instead;
	if the noun is the player, say "Megalomaniac." (B) instead.
Report complimenting (this is the report complimentig rule): say "[regarding the noun][They] really [appreciate]."

Chapter Taking hand

Section Take someone's hand

An hand is a kind of thing.
An hand is part of every person.

Taking hand is an action applying to one thing.
The taking hand action translates into Inter as "TakeHand".

Understand "take [hand]" as taking hand.

Sanity-check an actor taking hand an hand (called the target) which is part of the actor:
	say "[if the actor is the player][We][otherwise][The actor][end if] can't take [if the actor is the player][our][otherwise][regarding the actor][their][end if] hand." instead.

Check an actor taking hand (this is the blocking taking hand rule):
	say "[The holder of the noun] [do] not let [if the actor is the player][us][otherwise][the actor][end if] take [regarding the holder of the noun][their] hand." 

Section Take someone by the hand

Taking by-hand is an action applying to one thing.
The taking by-hand action translates into Inter as "TakeByHand".

Understand "take [someone] by/-- the/-- hand" as taking by-hand.

Sanity-check an actor taking by-hand:
	if the noun is the actor, say "[if the actor is the player][We][otherwise][The actor][end if] can't take [if the actor is the player][our][otherwise][regarding the actor][their][end if] hand." instead.

Check an actor taking by-hand (this is the blocking taking by hand rule):
	say "[The noun] [do] not let [if the actor is the player][us][otherwise][the actor][end if] take [regarding the noun][their] hand." 

People ends here.
