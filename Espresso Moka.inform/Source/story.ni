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

To say heart: say "[special-style-1][unicode 9829] [/r]".

Volume Startup

When play begins:
	now Monica is in the street-1;
	now the former direction is north; 
	say "It is Saturday afternoon. [/n]Francesco and Monica are walking down the main street of their town. [/n]Monica is very interested in the shop windows displaying clothes and accessories, shoes, bags... [/n]Francesco follows her with a bored look, unable to escape this routine. ";
	say "[/p][/b]«The Strawberry Field»[/r] [/i]presents[/r][/p]".
	
Volume World

Book Street

A street-room is a kind of room.
Rule for printing the name of a street-room: say "On the street".

The street is a region.

Chapter Movements

To say be more specific: say "You can't go in between directions, just say ".
Instead of going northeast when the player is in the street: say "[be more specific]north or east."
Instead of going southeast when the player is in the street: say "[be more specific]south or east."
	
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

Instead of going east when the player is in the street: try going inside.
				
Chapter Street 1

The street-1 is a street-room.
The description is "[We] have left the central square behind you (to the south) and are now heading north along the main road of the town. [/n]On the west side of the street are the windows of a large building, and on the east side a large window of a clothes store[if unvisited]. [/p]While [Monica] carefully examines the shop window, you, not interested, remember that the capsules for your coffee machine at home are running out. [/n][/ss]Mo, we must remember to buy coffee capsules: they are running out.' [/se][we] [say]. [/n][/ss]Sure Ciccio: the shop is just ahead.' [/se][regarding Monica][they] [reply][end if].".
The street-1 is in the street.
	
The clothes store window is in the street-1. It is scenery.
The description is "A large window displaying women's clothing. You are not interested."
Understand "clothes/garments/dressing/-- store/shop window/--" or "garments/dressing" as the clothes store window.

Section  Movements

To say no door to enter: say "There is no door to enter the building."
Instead of going west when the player is in the street-1: say no door to enter.
Instead of going inside when the player is in the street-1:
	say "If you try to do so, you will hit your nose against the glass."
Instead of going south when the player is in the street-1:
	say "[/ss]We've just arrived, so we're not going home yet.' [/se][Monica] [say] firmly.";
	say "[/ss]Besides,' [/se][regarding Monica][they] [add] [/ss1]you said it yourself, we have to buy coffee capsules.' [/r][/n]".

Chapter Street 2

The street-2 is a street-room.
The description is "On the west side of the street is the large wooden front door of the building. [/n]On the east side is the entrance to the clothes store. [if unvisited][/p][/ss]Hey look!' [/se][Monica] [claim] [our] attention [/ss1]There are the shorts you love, the ones that drove so many people crazy with their pockets in the other game.' [/r][/n][/ss]It's better not to mention it,' [/se][we] [suggest] [/ss1]I don't want players to run away thinking they have to search all the pockets for the wallet.' [/r][/n]You both start to laugh.[end if]".
The street-2 is north of the street-1.
The street-2 is in the street.

Section Clothes store

The Clothing Store is a room.
The Clothing Store is inside from street-2

The clothes store entrance is in the street-2. It is scenery.
The description is "On one side of the window is a glass door. [/n]Through the glass you can see men's clothing, including the baggy shorts you always wear on your mountain hikes."
Understand "clothes/garments/dressing/-- store/shop window/door/entrance/--" or "garments/dressing/window/door" as the clothes store entrance.

Does the player mean examining the clothes store entrance: it is likely.
Does the player mean opening the clothes store entrance: it is likely.

Instead of opening the clothes store entrance: try going inside.
Instead of entering the clothes store entrance: try going inside.

Section Shopper

The white shopper is container. It is open, not openable, not lockable.
The description is "A white paper shopper."
Instead of opening the white shopper: say "It's already open."

The pair of beige shorts is a cloth. The description is "A pair of beige shorts with lots of pockets: two on the back, two on the front and two on the legs.".
Understand "pants" as the pair of beige shorts.
A pocket is a kind of container.
A pocket is always open. A pocket is always not openable.
Instead of searching a pocket: try examining the noun.
The left back pocket, the right back pocket, the left front pocket, the right front pocket, the left leg pocket, the right leg pocket are pockets.
The left back pocket, the right back pocket, the left front pocket, the right front pocket, the left leg pocket, the right leg pocket are parts of the pair of beige shorts.

The pair of beige shorts is in the white shopper.

Section Building door

The wooden front door is in the street-2. It is scenery.
The description is "A large wooden door. It is closed."
Understand "large/-- building/house wooden/-- front/-- door/entrance" or "wooden/-- front/-- door/entrance of the/-- large/-- building/house" as the wooden front door.

Instead of opening the wooden front door:
	say "([the noun])[command clarification break]It is locked. [/n]Only the tenants have the key to open it. In any case, there is nothing of interest inside."

Section  Movements

Instead of going west when the player is in the street-2: try opening the wooden front door.
Instead of going inside when the player is in the street-2:
	unless the clothing store is visited:
		say "[heart][/ss]Oh dear, you know I love shopping!' [/se][Monica] [exclaim].";
		say "[/p][note style]A few minutes later. [/r][/p]";
		say "[We] and [Monica] exit from the shop. [/n]You are carrying a shopper.";
		now the clothing store is visited;
		now the player carries the white shopper;
	otherwise:
		say "[/ss]We have already bought the shorts,' [/se][Monica] [say] [/ss1]let's go ahead, we have to buy coffee.' [/r][/n]".
	
Instead of going south when the player is in the street-2:
	say "[/ss]But where are you going?' [/se][Monica] [ask] [/ss1]The coffee shop is on the other direction.' [/r][/n]"

Chapter Street 3

The street-3 is a street-room.
The description is "On the west side of the street the large building continues, and on the east side there is the coffee shop. [if unvisited][/p][/ss]Well, we arrived at Marco's.' [/se][we] [say]. [/n][/ss]Did you see? He replaced the shop window.' [/se][Monica] points out. [/n][/ss]Yes, Marco knows how to attract his female customers.' [/se][we] [reply] with a smile.[end if]".
The street-3 is north of the street-2.
The street-3 is in the street.

After going to the street-3 for the first time: 
	Monica likes mokas in 1 turn from now;
	continue the action.
At the time when Monica likes mokas:
	say "[/ss] [heart]Those colourful mokas are really pretty.' [/se][Monica] [say] sweetly."
	
Section Movements

Instead of going west when the player is in the street-3: say no door to enter.
To say shop is here: say "[/ss]But where are you going?' [/se][Monica] [ask] [/ss1]The coffee shop is here!' [/r][/n]".
Instead of going south when the player is in the street-3: say shop is here.
Instead of going north when the player is in the street-3: say shop is here.
	
Chapter Coffee shop

The Coffee Shop is a room.
The printed name is "In the coffee shop".
The Coffee Shop is inside from street-3.

Section Shop window

The coffee shop window is in the street-3. It is scenery.
The description is "Through the glass you can see a wooden shelf on which coloured mokas are placed.".
Understand "coffee/capsules/-- store/shop window/door/entrance/--" or "window/door" as the coffee shop window.

Instead of opening the coffee shop window: try going inside.
Instead of entering the coffee shop window: try going inside.

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
Instead of examining the main road: try looking.

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

Rule for printing a locale paragraph about Monica (this is the Monica next to you rule): now Monica is mentioned.
	
Chapter Monica initial dressing

The pair of jeans is a cloth. The description is "A pair of slightly frayed skinny jeans."
The striped camisole is a cloth. The description is "A camisole with red and white stripes."
The pair of shimmering gold sneakers is a cloth. 

A monica-bag is a kind of container. It is closed, openable and wearable.
The shiny black handbag is a monica-bag. 
The description is "A shiny black handbag with a long golden chain strap. [if open]It's open. [end if]".
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
	say "[/ss]As Mary Poppins: I'm pratically perfect!' [/se][Monica] [shut] [us] down."

Book Marco

Marco is a man in the coffee shop.

Book Narrator

The narrator is a backdrop.
The narrator is everywhere.
Understand "storyteller/teller" as the narrator.

Understand "narrator/storyteller/teller/master" as "[narrator]".
Asking narrator for is an action applying to one thing.
Understand "ask the/-- [narrator] for [anything]" as asking narrator for.
Carry out asking narrator for: try saying hello to the narrator.
	
Asking narrator about is an action applying to one thing.
Understand "ask the/-- [narrator] about [anything]" as asking narrator about.
Carry out asking narrator about: try saying hello to the narrator.

Quizzing narrator about is an action applying to one topic.
Understand "ask the/-- [narrator] about [text]" as quizzing narrator about.
Carry out quizzing narrator about: try saying hello to the narrator.

	