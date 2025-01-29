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

Include Lexicography by Zed Lopez.
Include Commons by The Strawberry Field.

Volume Help

To say verbs command:
	say "Type [/b]verbs[/r] or [/b]commands[/r] for a list of available commands."
	 
Requesting help is an action out of world.
Understand "help me/-- please/--" as requesting help. 
Understand the command "hint/advise/suggest/tip" as "help".
Understand "help/hint/hints/suggestion/suggestions/advise/tip/tips" as "[help]".
Understand "ask for [help]" as requesting help.
Understand "get [help]" as requesting help.
Understand "request [help]" as requesting help.
Report requesting help:
	say "[text corresponding to a context of current context in the table of help topics][/p]";
	say verbs command.
	
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
	say "Look carefully around you.";
	say "Examine everything. Even if there are many things in the location, try to examine each one, at least once. Be systematic.";
	say "Notice which objects the game is focussing your attention on, and which seem to be background or scenery.";
	say "Try to interact with things. Use common sense. If you see a button, push it. If you find a flute, play it. And 'take' anything that you can possibly lift."
	
Table of help topics
Context	Text
Generic-help	"[generic help]"


Volume Magic

Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy.
Understand "abracadabra" or "say abracadabra" or "cast abracadabra" as casting xyzzy.
Understand "sim sala bim" or "say sim sala bim" or "cast sim sala bim" as casting xyzzy.
Understand "simsalabim" or "say simsalabim" or "cast simsalabim" as casting xyzzy.
Understand "alakazam" or "say alakazam" or "cast alakazam" as casting xyzzy.

Casting xyzzy is an action applying to nothing.
Report casting xyzzy:
	say "Nothing happens."

Volume Reflection

Listing verbs is an action out of world.
Understand "verbs" or "commands" as listing verbs.

Report listing verbs:
	repeat with v running through the dictionary entries:
		unless v is verb-entry, next;
		if v is meta-entry, next;
		let cmd-alias be the command verb of v;
		let cte be the command table entry for cmd-alias;
		let cmd-action be the action name for cte;
		if "[cmd-action]" exactly matches the text "", next;
		say "[v] [/i]";
		unless "[v]" exactly matches the text "[cmd-alias]", say "(same as [/r][cmd-alias][/i]) ";
		say "- [cmd-action][/r][/n]".

Contexts ends here.