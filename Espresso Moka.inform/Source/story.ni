"Espresso Moka" by Roberto Ceccarelli

Volume Configuration

Book Includes

Include Basic Screen Effects by Emily Short.
Include Glulx Text Effects (for Glulx only) by Emily Short.
Include Assorted Text Generation by Emily Short.
Include Large Game Speedup by Nathanael Nerode.
Include Conversation Package by Eric Eve.
Include Customized Trinity Inventory by The Strawberry Field.
Include Commons by The Strawberry Field.
Include People by The Strawberry Field.

Book Settings

The release number is 1.
The story creation year is 2025.
The story genre is "Tutorial".
The story headline is "An everyday puzzle".
The story description is "'Making good coffee seems easy!' So went the ad for a well-known brand of coffee maker.

Francesco and Monica want to try making coffee with a moka like their mothers did. They find it easier to insert a capsule and press a button, but..."

Use brief room descriptions.

Chapter Banner

After printing the banner text:
	say "Released under Creative Commons BY-NC-SA license[/n]".
	
Chapter release

Release along with cover art ("Francesco and Monica prepare an espresso moka").
Release along with the library card.
Release along with a "TSF" website and an interpreter.

Book Styles

Table of User Styles (continued)
style name	color	italic	font weight	background color	relative size
all-styles	"#101010"	false	regular-weight	"#dbd9cd"	0
header-style	--	true	bold-weight	--	3
italic-style	--	true	regular-weight	--	--
bold-style	--	false	bold-weight	--	--
special-style-1	"#FF0000"	false	regular-weight	--	--
note-style	"#0000A0"	true	bold-weight	--	--

To say heart: 
	say "[special-style-1][unicode 9829] [/r]".

Volume Startup

When play begins:
	now Monica is in the street-1;
	now the former direction is north; 
	say "It is Saturday afternoon. [/n]Francesco and Monica are walking down the main street of their town. [/n]Monica is very interested in the shop windows displaying clothes and accessories, shoes, bags... [/n]Francesco follows her with a bored look, unable to escape this routine. ";
	say "[/p][/b]«The Strawberry Field»[/r] [/i]presents[/r][/p]".
	
Volume World

Book Street

A street-room is a kind of room.
Rule for printing the name of a street-room:
	say "On the street".

The street is a region.

Chapter Movements

To say be more specific:
	say "You can't go in between directions, just say ".
Instead of going northeast when the player is in the street:
	say "[be more specific]north or east."
Instead of going southeast when the player is in the street:
	say "[be more specific]south or east."
	
To say nothing west:
	say "There is nothing of interest to the west, do you want to go ".
Instead of going northwest when the player is in the street:
	say "[nothing west]north?";
	if the player consents, try going north.
Instead of going southwest when the player is in the street:
	say "[nothing west]south?";
	if the player consents, try going south.

Instead of going up when the player is in the street:
	say "Keep your feet on the ground!".
Instead of going down when the player is in the street:
	say "There's no point in going under the road, there's no way you can get there anyway."
Instead of going outside when the player is in the street:
	say "[/ss]Don't try to escape!' [/se][Monica] [exclaim]."
			
Chapter Street 1

The street-1 is a street-room.
The description is "You have left the central square behind you (to the south) and are now heading north along the main road of the town. [/n]On the west side of the street are the windows of a large building, and on the east side a large window of a clothes store.".
The street-1 is in the street.

The clothes store window is in the street-1. It is scenery.
The description is "A large window displaying women's clothing. You are not interested."
Understand "clothes/garments/dressing/-- store/shop window/--" or "garments/dressing" as the clothes store window.

Chapter Street 2

The street-2 is a street-room.
The description is "Description".
The street-2 is north of the street-1.
The street-2 is in the street.

Chapter Street 3

The street-3 is a street-room.
The description is "Description".
The street-3 is north of the street-2.
The street-3 is in the street.

Chapter Coffee shop

The Coffee Shop is a room.
The printed name is "In the coffee shop".
The Coffee Shop is inside from street-3.

Chapter Clothing Store

The Clothing Store is a room.
The Clothing Store is inside from street-2

Book Kitchen

The Kitchen is a room.

Book Backdrops

Chapter Sky

The sky is a backdrop. 
The description is "The sky is clear, just a few harmless clouds."
The sky is in the street.
Understand "top/overhead" as the sky.

Chapter Ground

The ground is a backdrop.
The description is "[if the location of the player is the kitchen]The floor is covered with pinkish streaked stoneware tiles[otherwise if the location of the player is the coffee shop]The floor is covered with white tiles[otherwise]The road is paved with porphyry cobblestones, which are called 'sanpietrini' for short.[end if]."
The ground is everywhere.
Understand "terrain/land/soil/floor" as the ground.

Chapter Ceiling

The ceiling is a backdrop.
The description is "A white ceiling."
The ceiling is in the coffee shop and in the kitchen.
Understand "roof/top/overhead" as the ceiling.

Chapter Large building windows

The large building windows is a backdrop.
The large building windows are in the street.

Chapter Main road

The main road is a backdrop.
The main road is in the street.
Understand "main/-- street" as the main road.
Instead of examining the main road:
	try looking.

Volume Characters

Book Player

The description of the player is "A young man, about 30 years old, ".
Hair of the player are "blond".
Notes of the player are "You work as a software engineer, enjoy photography and love hiking in the mountains. [/n]In love with your girlfriend, very beautiful, but also shrewish when something doesn't go her way. In the end you always please her and she appreciates it. [/n]Monica sometimes calls you Ciccio".
The player is male.
The printed name of the player is "Francesco".
The carrying capacity of the player is 3.
The scent-description of the player is "the aftershave [/i]'for the man who never has to ask'[/r] that [Monica] gave [us]".
Understand "Ciccio/Francesco/me/myself/you/yourself" or "the/-- player/protagonist" as yourself.

Chapter Initial player dressing

The black t-shirt is a cloth. The description is "A black T-shirt with a surfer design on the front.".
Understand "black/-- shirt" as black t-shirt.

The pair of beige pants is a cloth. The description is "A pair of cotton beige pants.".

The pair of blue sneakers is a cloth.

The player wears the black t-shirt, the pair of beige pants and the pair of blue sneakers.

Chapter Wallet

The wallet is a closed openable container.
The description is "A grey canvas wallet. It's a gift from Mo.".
Check the player opening the wallet:
	if the player is not carrying the noun:
		carry out the implicitly taking activity with the noun;
		if the player is not carrying the noun, stop the action. 
	
An unuseful card is a kind of thing.	
The driving license, the credit card, the debit card and  the supermarket fidelity card are unuseful cards.
Instead of examining the driving license, say "Your pink driving license.".
Instead of taking an unuseful card, say "Right now [the noun] is of no use to you.".
Instead of examining an unuseful card, say "Examining [the noun] now is a waste of time.".

The driving license, the credit card, the debit card, the identity card, the supermarket fidelity card, the photo are in the wallet.
The description of the photo is "A photo of [Monica] you took last year at Lake Misurina with the Three Peaks of Lavaredo in the background.".		

Some money are in the wallet. The description of money is "It's only banknotes, coins annoy you.".
Instead of taking money, say "There is nothing to pay.".

The identity card is in the wallet.
Understand "id card/document/--" or "your id/identity/-- card/document/documents" as the identity card.
The description is "A card folded into a booklet with your photo (slightly old) and your personal information.".
Understand "passport/document" as the identity card.

Book Girlfriend

Monica is a woman.
The description is "Tall, slim ".
Hair are "lots of slightly reddish, frizzy".
Eyes are "sparkling green".
Notes are "Could you not fall in love with her? [/n]A peppy girl, she won't forgive you anything you do that she doesn't like, but deep down she has her heart beating for you. [/n][We] got used to shortening her name to Mo".
The scent-description of Monica is "the bouquet perfume you gave her for her birthday. [/n]She loves it and has almost finished it, so you have to find an excuse to give her another."
Understand "Mo" or "my/your/-- love/girl/girlfriend" as Monica.
Monica is proper-named.

Rule for printing a locale paragraph about Monica (this is the Monica next to you rule):
	say "[Monica] [are] next to you."

Chapter Monica initial dressing

The pair of jeans is a cloth. The description is "A pair of slightly frayed skinny jeans."
The striped camisole is a cloth. The description is "A camisole with red and white stripes."
The pair of shimmering gold sneakers is a cloth. 

A monica-bag is a kind of container. It is closed, openable and wearable.
The shiny black handbag is a monica-bag. The description is "A shiny black handbag with a long golden chain strap. [if open]It's open. [end if]".
Understand "bag" as a monica-bag.

Monica wears the pair of jeans, the striped camisole,  the pair of shimmering gold sneakers and the shiny black handbag.

Section Monica dressing rules

To say do-not-touch: say "[Monica] [slap] your hand and [scold] you: [/ss]Don't touch!'[/r]".
Instead of opening a monica-bag, say "[do-not-touch]".
Instead of taking a monica-bag, say "[do-not-touch]".
Instead of searching a monica-bag, say "[do-not-touch]".

Persuasion rule for asking Monica to try dropping a monica-bag:
	say "[regarding the actor][They] [look] at you angrily and [clutch] [their] [noun].";
	persuasion fails.
Persuasion rule for asking Monica to try opening a monica-bag:
	say "[/ss]This is mine and I do what I want with it.' [/se][regarding the actor][they] [shut] you up.";
	persuasion fails.
Persuasion rule for asking Monica to try getting off a cloth:
	say "[/ss]Aren't you ashamed to ask me this?' [/se][regarding the actor][they] [ask] you angrily.";
	persuasion fails.
Instead of taking a cloth which is worn by Monica, say "[/ss]Hey, what are you trying to do?' [/se][Monica] [shriek].".
Persuasion rule for asking Monica to try giving a cloth to someone: 
	say "[/ss]No way!' [/se][regarding the actor][they] [reply]."; 
	persuasion fails.
	
Chapter Activities

Section Kisses

Understand the command "kiss" as something new.
Understand "kiss [something]" as kissing.
Kisses-count is a number that varies. Kisses-count is 0.
Kisses-limit is always six.
Instead of kissing something:
	if the noun is Monica:
		increase kisses-count by one;
		if kisses-count is greater than kisses-limit, say no more kisses instead;
		say "[heart][/ss][one of]Oh dear[or]I love you[at random]!' [/se][regarding the noun][they] [whisper] sweetly in your ear.";
		if kisses-count is three, say narrator love kissing;
		stop the action;
	if the noun is a female person, say "[/ss]I'm here to be kissed!' [/se][Monica] [scold] [us]." instead;
	if the noun is a male person, say "[/ss]Do you like men now?' [/se]amazed [Monica] [ask] [us]." instead;
	say "[/ss]Hold the kisses for me!' [/se][Monica] [scold] [us].".

Persuasion rule for asking Monica to try kissing something:
	if the noun is the player:
		increase kisses-count by one;
		if kisses-count is greater than kisses-limit:
			say no more kisses;
			persuasion fails;
		say "[heart][/ss][one of]Oh dear[or]I love you[or]Here, my love[at random]!' [/se][regarding the actor][they] [say] and [place] her lips on yours. [/n][We] greatly [appreciate] this kiss.";
		if kisses-count is three, say narrator love kissing;
		persuasion fails;
	if the noun is a person:
		increase kisses-count by one;
		if kisses-count is greater than kisses-limit, persuasion fails;
		say "[heart][/ss]My lips are only for you!' [/se][regarding the actor][they] [say] and [kiss] you instead. [/n][We] greatly [appreciate] this.";
		if kisses-count is three, say narrator love kissing;
		persuasion fails;
	if the noun is the narrator:
		say "Unfortunately, the rules of the game do not allow it, but I have to admit that I would have loved to do it.";
		persuasion fails;
	say "[/ss]I don't think so.' [/se][Monica] [answer].";
	persuasion fails;

To say narrator love kissing:
	say "This kissing scene is starting to feel pretty enjoyable...";
	say "[/ss]Don't get your hopes up!' [/se]the actress who plays [Monica] [say] to the narrator [/ss1]They are just stage kisses.' [/r][/n]";
	say "Ok, Ok, I'll try to remain professional.".
	
To say no more kisses:
	say "[/ss]Ciccio, we have already kissed so many times.' [/se][Monica] [remind] [/ss1]I love kissing you, but now we have to get on with the game.' [/r][/n]".
	
Section Singing and dancing

Persuasion rule for asking Monica to try singing: 
	say "[/ss][one of]Why do you want me to sing if you know I'm out of tune?' [or]No, I don't sing, I'm ashamed.' [at random][/se][regarding the actor][they] [reply].";
	persuasion fails.

Persuasion rule for asking Monica to try dancing: persuasion succeeds.
Report Monica dancing:
	say "[heart][The actor]  [do] a twirl. [/n]";
	say "[We] [clap] and [kiss] [regarding the actor][them].".
	
Section Follow the player

After going:
	now Monica is in the location of the player;
	continue the action.

Chapter Answers

Response of Monica when asked-or-told about yourself:
	say "[/ss]But what are these questions?' [/se][Monica] [reply], rather annoyed [/ss1]I remind you that you are really annoying when you stare at those computer games or think about your photos.'[/r][/n]Then [they] [add] [/ss1]Instead, try to be nice to your Mo, who loves you so much.' [/r][/n]".

Response of Monica when asked-or-told about Monica or asked-or-told about "her/herself":
	say "[/ss]As Mary Poppins: I'm pratically perfect!' [/se][Monica] [shut] [we] down."

Book Narrator

The narrator is a backdrop.
The narrator is everywhere.
Understand "storyteller/teller" as the narrator.

Understand "narrator/storyteller/teller/master" as "[narrator]".
Asking narrator for is an action applying to one thing.
Understand "ask the/-- [narrator] for [anything]" as asking narrator for.
Carry out asking narrator for:
	try saying hello to the narrator.
	
Asking narrator about is an action applying to one thing.
Understand "ask the/-- [narrator] about [anything]" as asking narrator about.
Carry out asking narrator about:
	try saying hello to the narrator.

Quizzing narrator about is an action applying to one topic.
Understand "ask the/-- [narrator] about [text]" as quizzing narrator about.
Carry out quizzing narrator about:
	try saying hello to the narrator.

	