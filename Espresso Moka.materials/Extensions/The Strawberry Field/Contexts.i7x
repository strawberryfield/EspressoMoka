Version 1 of Contexts by The Strawberry Field begins here

Include Lexicography by Zed Lopez.
Include Commons by The Strawberry Field.

Volume Help

To say verbs command:
	say "Type [/b]verbs[/r] or [/b]commands[/r] for a list of available commands."
	 
Requesting help is an action out of world.
Understand "help me/-- please/--" as requesting help. 
Understand the command "hint/advise/suggest/tip" as "help".
Understand "ask for help/hint/hints/suggestion/suggestions/advise" as requesting help.
Understand "get help/hint/hints/suggestion/suggestions/advise" as requesting help.
Understand "request help/hint/hints/suggestion/suggestions/advise" as requesting help.
Report requesting help:
	say "[text corresponding to a context of current context in the table of help topics][/p]";
	say verbs command.

Section contexts 

Context is a kind of value.
The contexts are defined by the Table of help topics. 
Current context is a context that varies. Current context is usually generic-help.

Table of help topics
Context	Text
Generic-help	"Look carefully around you."


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