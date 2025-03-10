Version 2 of Written papers by The Strawberry Field begins here.

[
Written papers © 2024-2025 by Roberto Ceccarelli - The Strawberry Field 
is licensed under CC BY-NC-SA 4.0. 
To view a copy of this license, 
visit https://creativecommons.org/licenses/by-nc-sa/4.0/

Written papers by The Strawberry Field is free software: 
you can redistribute it and/or modify it
under the terms of the Creative Commons BY-NC-SA license.

Written papers is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the license for more details.
]

"Provides topic search on tables for each side of the sheet. There are also actions for rotating the sheet as well as folding and unfolding it."

Include Typography by The Strawberry Field.
Include Verbs by The Strawberry Field.

Chapter Definitions

A paper-item is a kind of thing.
The specification of paper-item is "Defines an object that can contain text on both sides (represented by ‘paper-side’ objects). 
The object can be rotated upside down or folded. In the latter case, an alternative text description may be provided."

A paper-side is a kind of thing.
The specification of paper-side is "This kind of object is never instantiated directly, but is an abstract class from which the ‘front side’ and ‘back side’ classes are derived."
A paper-side has a table name called arguments.
The arguments property translates into Inter as "Paper_item_arguments".

A front side is a kind of paper-side. A front side is part of every paper-item.
The specification of front side is "This kind of object is never instantiated directly, but it is part of every paper-item object."
A back side is a kind of paper-side. A back side is part of every paper-item.
The specification of back side is "This kind of object is never instantiated directly, but it is part of every paper-item object."

A paper-item can be folded or unfolded.
The folded property translates into Inter as "Paper_item_folded".
A paper-item is usually unfolded.
Understand the folded property as describing a paper-item.

A paper-item has some text called folded appearance.
The folded appearance property translates into Inter as "Paper_item_folded_appear".

Does the player mean doing something with a paper-item: it is likely.

Chapter Folding

Section Folding

Folding is an action applying to one thing.
The folding action translates into Inter as "Fold".
The specification of the folding action is "Folding places the object in a state in which its contents cannot be read, 
but a summary description of the object itself is shown."
Understand "fold [something] again/--" as folding.
Understand "close [a paper-item] again/--" as folding. 

Check folding (this is the check folding rule):
	unless the noun is a paper-item, say "[We] [can't fold] [the noun]." (A) instead;
	if the noun is folded, say "It's already folded." (B) instead;
	if the player cannot carry the noun, stop the action.
Carry out folding: now the noun is folded.
Report folding (this is the report folding rule): say "Folded."
	
Section Unfolding

Unfolding is an action applying to one thing.
The unfolding action translates into Inter as "Unfold".
The specification of the unfolding action is "Unfolding make the object readable and flippable."
Understand "unfold [something]" as unfolding.
Understand "open [a paper-item]" as unfolding.

Check unfolding (this is the check unfolding rule):
	unless the noun is a paper-item, say "[We] [can't unfold] [the noun]." (A) instead;
	if the noun is unfolded, say "It's already unfolded." (B) instead;
	if the player cannot carry the noun, stop the action.
Carry out unfolding: now the noun is unfolded.
Report unfolding (this is the report unfolding rule): say "Unfolded."
	
Chapter Sides

A paper-item can be upside or turned. A paper-item is usually upside.
The upside property translates into Inter as "Paper_item_upside".
Instead of turning a paper-item:
	say "[We] [turn] [the noun]: now [we] [see] the ";
	if the noun is upside:
		now the noun is turned;
		say "back";
	otherwise:
		now the noun is upside;
		say "front";
	say " side.".
Understand the command "flip" as "turn".
Understand the command "revert" as "turn".

Instead of looking under a paper-item: try turning the noun.

Does the player mean examining a paper-item: it is likely.

To decide which paper-side is the current side of (P - a paper-item):
	let S be a paper-side;
	if P is upside, let S be a random front side which is part of P;
	otherwise let S be a random back side which is part of P;
	decide on S.
		
Instead of examining a paper-item:
	if the noun is folded, say "[folded appearance][/n]" instead;
	try examining the current side of the noun.

Chapter Topics

Table of Empty topics
paper-topic (a topic)	read	title	text
--	(a truth state)	(some text)	(some text)

The current paper is an object that varies.

To say list of topics of (S - a paper-side):
	let named options count be the number of rows in arguments of S;
	repeat through arguments of S:
		say "[/ss][title entry]'[/r]";
		decrease named options count by 1;
		if the named options count is 1:
			if the serial comma option is active, say ",";
			say " and ";
		otherwise unless the named options count is 0:
			say ", ".

Section reading
	
Examining as a paper is an action applying to one topic.
The examining as a paper action translates into Inter as "ReadPaper".
The specification of examining as a paper action is "Examining as a paper allows the contents of a sheet to be read from a list of topics contained in a table."
Understand "examine [text]" as examining as a paper.
Understand "read [text]" as examining as a paper.

Check examining as a paper (this is the check examining as a paper rule):
	if the current paper is nothing, say "I don't know where you want to read from." (A) instead.

Carry out examining as a paper:
	if the topic understood is a paper-topic listed in the arguments of the current side of the current paper, now the read entry is true. 
	
Report examining as a paper (this is the report examining as a paper rule):
	if the topic understood is a paper-topic listed in the arguments of the current side of the current paper:
		say "[/n][/b][title entry][/r][/n]";
		say "[/f][text entry][/r][/n]";
	otherwise:
		say "I can't find anything about [topic understood]." (A).

Instead of consulting something about:
	if the noun is paper-item:
		now the current paper is the noun;
		try examining as a paper the topic understood;
	otherwise:
		continue the action.

To say specify what to read: say "You need to specify what you want to read." 		
Before examining as a paper when the current paper is nothing (this is the reading as a paper needs current paper rule):
	let np be the number of paper-items carried by the player;
	if np is zero:
		let nv be the number of visible paper-items;
		if nv is zero, say "There seems to be nothing suitable." (A) instead;
		if nv is greater than one, say specify what to read instead;
		now the current paper is a random visible paper-item;
	if np is greater than one, say specify what to read instead;
	if np is one, now the current paper is a random paper-item carried by the player;
	say "(looking at [the current paper])[/ccb]".

Section Is read?

To decide if (T - text) in (PS - a paper side) is read:
	let TT be the arguments of PS;
	if there is a paper-topic of "[T]" in TT:
		decide on the read corresponding to a paper-topic of "[T]" in TT;
	otherwise: 
		decide no.
	
Written papers ends here.