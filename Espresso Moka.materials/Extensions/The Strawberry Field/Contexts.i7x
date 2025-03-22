Version 1 of Contexts by The Strawberry Field begins here

[
Contexts © 2025 by Roberto Ceccarelli - The Strawberry Field 
is licensed under CC BY-NC-SA 4.0. 
To view a copy of this license, 
visit https://creativecommons.org/licenses/by-nc-sa/4.0/

Contexts by The Strawberry Field is free software: 
you can redistribute it and/or modify it
under the terms of the Creative Commons BY-NC-SA license.

Contexts is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the license for more details.
]

"A framework to provide context-sensitive help, thinking and magic."

Include Typography by The Strawberry Field.
Include Reflection by The Strawberry Field.

Volume Help

To say verbs command: say "Type [/b]verbs[/r] or [/b]commands[/r] for a list of available commands."
	 
Requesting help is an action out of world.
The requesting help action translates into Inter as "Help".
The specification of the requesting help action is "This out of world action show a message taken from the table of help topics.
A 'current context' variable hold the topic to be shown."

Understand "help me/-- please/--" as requesting help. 
Understand the command "hint/advise/suggest/tip" as "help".
Understand "help/hint/hints/suggestion/suggestions/advise/tip/tips" as "[help]".
Understand "ask for [help]" as requesting help.
Understand "get [help]" as requesting help.
Understand "request [help]" as requesting help.
Report requesting help:
	if there is a text corresponding to a context of current context in the table of help topics, say text corresponding to a context of current context in the table of help topics;
	otherwise say generic help;
	say /p;
	say verbs command.

Understand "help [text]" and "hint [text]" and "hints [text]" as a mistake ("Use [/b]help[/r] with no additional text.").
	
Section Narrator

The narrator is a backdrop.
The description is "The narrator is omnipresent and invisible."
The narrator is everywhere.

Understand "narrator/storyteller/teller/master" or "game/-- master" as "[narrator]".
Understand "[narrator]" as the narrator.

Understand "ask the/-- [narrator] for [help]" as requesting help.	
Understand "ask [help] to the/-- [narrator]" as requesting help.

Section contexts 

Context is a kind of value.
The contexts are defined by the Table of help topics. 
Current context is a context that varies. Current context is usually generic-help.

To say generic help:
	say "These are just some general tips, but at other times I might give you more specific information."; 
	say "You may also find it useful to use the [/b]think[/r] command.[/n]";
	say "[/b]Look[/r] carefully around you.";
	say "[/b]Examine[/r] everything. Even if there are many things in the location, try to examine each one, at least once. Be systematic.";
	say "Notice which objects the game is focussing your attention on, and which seem to be background or scenery.";
	say "Try to interact with things. Use common sense. If you see a button, [/b]push[/r] it. If you find a flute, [/b]play[/r] it. And [/b]take[/r] anything that you can possibly lift."
	
Table of help topics
Context	Text
generic-help	"[generic help]"

Volume Thinking

The block thinking rule is not listed in any rulebook.

Report thinking:
	if there is a text corresponding to a context of current context in the table of thoughts, say text corresponding to a context of current context in the table of thoughts;
	otherwise say generic thought;
	say /n.
	
To say generic thought: say "[one of]Hang in there[or]Cogito ergo sum[or]So far so good[at random]. ".

Table of thoughts
Context	Text
generic-help	"[generic thought]"

Volume Magic

Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy.
Understand "abracadabra" or "say abracadabra" or "cast abracadabra" as casting xyzzy.
Understand "sim sala bim" or "say sim sala bim" or "cast sim sala bim" as casting xyzzy.
Understand "simsalabim" or "say simsalabim" or "cast simsalabim" as casting xyzzy.
Understand "alakazam" or "say alakazam" or "cast alakazam" as casting xyzzy.

Casting xyzzy is an action applying to nothing.
The casting xyzzy action translates into Inter as "DoMagic".
The specification of the casting xyzzy action is "Actually the Contexts extension defines this action as a generic message." 

Report casting xyzzy (this is the report magic rule): say "[one of]Nothing happens[or][We] [aren't] a wizard[at random]."

Contexts ends here.