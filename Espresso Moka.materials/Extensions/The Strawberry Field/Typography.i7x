Version 2 of Typography by The Strawberry Field begins here.

[
Typography © 2024-2025 by Roberto Ceccarelli - The Strawberry Field 
is licensed under CC BY-NC-SA 4.0. 
To view a copy of this license, 
visit https://creativecommons.org/licenses/by-nc-sa/4.0/

Typography by The Strawberry Field is free software: 
you can redistribute it and/or modify it
under the terms of the Creative Commons BY-NC-SA license.

Typography is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the license for more details.
]

"A collection of shortenings and formatting sentences to use in say phrases."

Chapter Shortenings

Section Breaks and styles

To say /n: say line break.
To say /nn: say no line break.
To say /p: say paragraph break.
To say /run: say run paragraph on.
To say /ccb: say command clarification break.
To say /b: say bold type.
To say /i: say italic type.
To say /r: say roman type.
To say /f: say fixed letter spacing.

Section Symbols

To say /warning: say "[unicode 9888] ".
To say /copyright: say "[unicode 169] ".
To say --: say unicode 8212.

Section Dialogs

To say /ss: say "[/i]'".
To say /ss1: say "[unicode 8212] [/i]'".
To say /se: say "[/r][unicode 8212] ".

Chapter String alignment

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
	
Chapter Prices

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
			
Typography ends here.