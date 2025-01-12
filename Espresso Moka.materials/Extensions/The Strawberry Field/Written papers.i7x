Version 2 of Written papers by The Strawberry Field begins here.

Include Commons by The Strawberry Field

Chapter Definitions

A paper-item is a kind of thing.
A paper-side is a kind of thing.
A paper-side has a table name called arguments.
A front side is a kind of paper-side. A front side is part of every paper-item.
A back side is a kind of paper-side. A back side is part of every paper-item.

A paper-item can be folded or unfolded.
Understand the folded property as describing a paper-item.

A paper-item has some text called folded appearance.

Does the player mean doing something with a paper-item: it is likely.

Chapter Folding

Section Folding

Folding is an action applying to one thing.
Understand "fold [something]" as folding.

Check folding:
	unless the noun is a paper-item, say "[We] [can't fold] [the noun]." instead;
	if the noun is folded, say "It's already folded." instead;
	if the player cannot carry the noun, stop the action.
Carry out folding:
	now the noun is folded.
Report folding:
	say "Folded."
	
Section Unfolding

Unfolding is an action applying to one thing.
Understand "unfold [something]" as unfolding.

Check unfolding:
	unless the noun is a paper-item, say "[We] [can't unfold] [the noun]." instead;
	if the noun is unfolded, say "It's already unfolded." instead;
	if the player cannot carry the noun, stop the action.
Carry out unfolding:
	now the noun is unfolded.
Report unfolding:
	say "Unfolded."
	
Chapter Sides

A paper-item can be upside or turned. A paper-item is usually upside.
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

Instead of looking under a paper-item:
	try turning the noun.

Does the player mean examining a paper-item: it is likely.

To decide which paper-side is the current side of (P - a paper-item):
	let S be a paper-side;
	if P is upside:
		let S be a random front side which is part of P;
	otherwise:
		let S be a random back side which is part of P;
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
Understand "examine [text]" as examining as a paper.
Understand "read [text]" as examining as a paper.

Check examining as a paper:
	if the current paper is nothing, say "I don't know where you want to read from." instead.
	
Report examining as a paper:
	if the topic understood is a paper-topic listed in the arguments of the current side of the current paper:
		say "[/n][/b][title entry][/r][/n]";
		say "[/f][text entry][/r][/n]";
	otherwise:
		say "I can't find anything about [topic understood]."

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
		if nv is zero, say "There seems to be nothing readable." instead;
		if nv is greater than one, say specify what to read instead;
		now the current paper is a random visible paper-item;
	if np is greater than one, say specify what to read instead;
	if np is one, now the current paper is a random paper-item carried by the player;
	say "(looking at [the current paper])[/ccb]".
	
Written papers ends here.