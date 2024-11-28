Version 1 of People by The Strawberry Field begins here.

Volume Generic people

To say man:
	let the item be the prior named object;
	say "[if the item is a female person]wo[end if]m[if the prior naming context is plural]e[otherwise]a[end if]n".

To say Man:
	let the item be the prior named object;
	say "[if the item is a female person]Wom[otherwise]M[end if][if the prior naming context is plural]e[otherwise]a[end if]n".
	
Book Somatic properties

A person has some text called hair.
A person has some text called eyes.
A person has some text called notes.

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
	otherwise:
		say description of the noun;
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

Instead of taking off a cloth:
	say "This is not the time to undress."
	
Persuasion rule for asking someone to try getting off a cloth:
	say "[/ss]Does this seem like something to ask?' [/se][regarding the actor][they] [ask] you angrily.";
	persuasion fails.

People ends here.
