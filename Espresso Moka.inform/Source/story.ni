"Espresso Moka" by Roberto Ceccarelli

Volume Configuration

Book Includes

Include Basic Screen Effects by Emily Short.
Include Glulx Text Effects (for Glulx only) by Emily Short.
Include Assorted Text Generation by Emily Short.
Include Automated Drawers by Emily Short.
Include Large Game Speedup by Nathanael Nerode.
Include Conversation Package by Eric Eve.
Include Customized Trinity Inventory by The Strawberry Field.
Include Commons by The Strawberry Field.
Include People by The Strawberry Field.
Include Written papers by The Strawberry Field.
Include Contexts by The Strawberry Field.

Book Settings

The release number is 1.
The story creation year is 2025.
The story genre is "Tutorial".
The story headline is "An everyday life puzzle".
The story description is "'Making good coffee seems easy!' So went the ad for a well-known brand of coffee maker.

Francesco and Monica are keen to try making coffee with a moka, just like their mums did. They admit that capsules are so much easier to use, but..."

Use brief room descriptions.

Chapter Banner

After printing the banner text:
	say "Released under Creative Commons BY-NC-SA license[/n]".
	
Chapter release

Release along with cover art ("Francesco and Monica prepare an espresso with a moka").
Release along with the library card.
Release along with a "TSF" website and an interpreter.
Release along with a file of "Quickstart guide" called "quickstart.pdf".

Book Styles

Table of User Styles (continued)
style name	color	italic	font weight	background color	relative size
all-styles	"#101010"	false	regular-weight	"#dbd9cd"	0
header-style	"#605000"	true	bold-weight	--	3
italic-style	--	true	regular-weight	--	--
bold-style	--	false	bold-weight	--	--
special-style-1	"#FF0000"	false	regular-weight	--	2
note-style	"#605000"	true	bold-weight	--	1

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

Chapter Dropping

Instead of dropping something:
	say "Don't throw anything on the ground."
Instead of dropping a shopper-item:
	say "[/ss]I know you hate shoppers,' [/se][Monica] [say] taking [the noun] [/ss1]I'll take it.' [/r][/n]";
	now Monica carries the noun.

Chapter Movements

To say be more specific: say "You can't go in between directions, just say ".
Instead of going northeast when the player is in the street: say "[be more specific]north or east."
Instead of going southeast when the player is in the street: say "[be more specific]south or east."
	
To say nothing west:
	say "There is nothing of interest to the west, do you want to go ".
Instead of going northwest when the player is in the street:
	say "[nothing west]north?[/n]";
	if the player consents, try going north.
Instead of going southwest when the player is in the street:
	say "[nothing west]south?[/n]";
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
The description is "On the west side of the street is the large wooden front door of the building. [/n]On the east side is the entrance to the clothes store. [if unvisited][/p][/ss]Hey look!' [/se][Monica] [claim] [our] attention [/ss1]There are the shorts you love, the ones that drove so many people crazy with their pockets in your last game.' [/r][/n][/ss]It's better not to mention it,' [/se][we] [suggest] [/ss1]I don't want players to run away thinking they have to search all the pockets for the wallet.' [/r][/n]You both start to laugh.[end if]".
The street-2 is north of the street-1.
The street-2 is in the street.

Section Clothes store

The Clothing-Store is a room.
The Clothing-Store is inside from street-2.
Understand "cloth/clothes/clothing/-- store/shop" as the clothing-store.

The clothes store entrance is in the street-2. It is scenery.
The description is "On one side of the window is a glass door. [/n]Through the glass you can see men's clothing, including the baggy shorts you always wear on your mountain hikes."
Understand "clothes/garments/dressing/-- store/shop window/door/entrance/--" or "garments/dressing/window/door" as the clothes store entrance.

Does the player mean examining the clothes store entrance: it is likely.
Does the player mean opening the clothes store entrance: it is likely.

Instead of opening the clothes store entrance: try going inside.
Instead of entering the clothes store entrance: try going inside.

Section Shopper

A shopper-item is a kind of container.
A shopper-item is open, not openable, not lockable.
Instead of opening the shopper-item: say "It's already open."

The white shopper is a shopper-item.
The description is "A white paper shopper."


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
	say "([the noun])[/ccb]It is locked. [/n]Only the tenants have the key to open it. In any case, there is nothing of interest inside."

Section  Movements

Instead of going west when the player is in the street-2: try opening the wooden front door.
Instead of going inside when the player is in the street-2:
	unless the clothing-store is visited:
		say "[heart][/ss]Oh dear, you know I love shopping!' [/se][Monica] [exclaim].";
		say "[/p][note style]A few minutes later. [/r][/p]";
		say "[We] and [Monica] exit from the shop. [/n]You are carrying a shopper.";
		now the clothing-store is visited;
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
	now current context is street3-help;
	continue the action.
At the time when Monica likes mokas:
	say "[heart][/ss]Those colourful mokas are really pretty.' [/se][Monica] [say] [us] sweetly.";
	say "[/ss]I just told you that Marco is clever.' [/se][we] [reply][if the location of the player is the coffee-shop] in [Monica]'s ear[end if]."
	
Section Movements

Instead of going west when the player is in the street-3: say no door to enter.
To say shop is here: say "[/ss]But where are you going?' [/se][Monica] [ask] [/ss1]The coffee shop is here!' [/r][/n]".
Instead of going south when the player is in the street-3: say shop is here.
Instead of going north when the player is in the street-3: say shop is here.

Book Moka machinery

A thing can be sellable or unsellable. A thing is usually unsellable.
A thing can be paid or unpaid. A thing is usually unpaid.
A thing has a real number called price. The price of a thing is usually 0.
	
A moka-item is a kind of thing. 
A moka-item is sellable.
A moka-item has some text called color.
A moka-item can be hot or cold. It is usually cold.
A moka-item can be already opened.
A moka-item can be washed.

The price of a moka-item is usually 18.90.
The description of a moka-item is usually "A [color of the noun] moka pot for two cups[if the noun is on the moka pots open shelf]. [/n]A tag indicates the price of [price of the noun in euro][end if]." 
The current moka is a moka-item that varies.

The coffee powder is a thing.

Chapter Components 

A moka-component is a kind of container.
A moka-component is open, not openable, not lockable.
A moka-component can be filled. A moka-component usually is not filled.

The moka pot is a moka-component.
The description is "The upper part of the moka in which the extracted coffee is collected."
Instead of inserting something into the moka pot:
	say "This container must be left empty: it will be filled by the extracted coffee."

The moka heater is a moka-component.
Understand "moka/-- boiler" or "moka/-- water container"as the moka heater.
Instead of inserting something into the moka heater:
	if the noun is the coffee funnel filter, continue the action;
	otherwise say "The heater is the water container."
The description is "The lower part of the moka, the water container[if filled]. [/n]Actually it contains some water[end if]."

The coffee funnel filter is a moka-component in the moka heater.
Instead of inserting something into the coffee funnel filter:
	say "This is the powder container".
The description is "An aluminium funnel with a filter on which to put the coffee powder. It fits over the heater[if filled]. [/n]It is currently full of coffee powder[end if]."

Chapter Open

Understand the command "unscrew" as something new.
Unscrewing is an action applying to one thing.
Understand "unscrew [something]" as unscrewing.
Understand the command "disassembly" as "unscrew".

Check unscrewing:
	unless the noun is a moka-item, try opening the noun;
	if the player cannot carry the noun, stop the action instead;
	if the noun is hot, say "It [are] hot!" instead.
Carry out unscrewing:
	now the noun is nowhere;
	now the noun is already opened;
	now the current moka is the noun;
	now the player carries the moka pot;
	now the player carries the moka heater;
	set pronouns from the moka pot.
Report unscrewing:
	say "[We] un[screw] the moka and thus separate the heater from the pot."
			
Instead of opening a moka-item:
	try unscrewing the noun.
	
Instead of opening a moka-component:
	say "It is not something to be opened."
	
Section Filter

Instead of taking off the coffee funnel filter:
	try taking the noun.
	
Chapter Close

Understand the command "screw" as something new.
Screwing is an action applying to one thing.
Understand "screw [something]" as screwing.	
Understand the command "assembly" or "reassembly" as "screw".

Check screwing:
	unless the noun is a moka-component, try closing the noun; 
	unless the coffee funnel filter is in the moka heater, say "[We] must first insert the filter into the heater." instead;
	if the player cannot carry the moka heater, stop the action instead;
	if the player cannot carry the moka pot, stop the action instead. 
Carry out screwing:	
	now the moka heater is nowhere;
	now the moka pot is nowhere;
	now the player carries the current moka;
	set pronouns from the current moka.
Report screwing:
	say "[We] [have] reassembled [the current moka].".
	
Instead of closing a moka-component:
	try screwing the noun.
	
Instead of closing a moka-item:
	say "It [are] already closed."
Instead of screwing a moka-item:
	try closing the noun.

Does the player mean closing the moka pot: it is likely.
Does the player mean screwing the moka pot: it is likely.

Chapter Wash

Understand the command "wash" as "rub".
Does the player mean rubbing the moka pot: it is likely.

To say already washed: say "It has already been washed, there is no need to do it again. [/n]".

Instead of rubbing:
	unless the noun is a moka-component, say "[The noun] [don't] need cleaning." instead;
	continue the action.
	
Instead of rubbing a moka-item:
	if the current moka is washed, say already washed instead;
	say "The important thing is to wash the inside, not the outside."

Before rubbing a moka-component:
	if the current moka is washed, say already washed instead;
	if the coffee funnel filter is in the moka heater, say "[We] must first remove the filter from the heater." instead;
	unless the coffee funnel filter is empty, say "It's not advisable to wash the funnel while it contains [the list of things in the coffee funnel filter]." instead;
	if the number of things which are not moka-components carried by the player is greater than 0, say "[/ss]You can't wash the moka while also holding [the list of things which are not moka-components carried by the player].' [/se][Monica] [state]." instead;
	if the player cannot carry the moka pot, stop the action instead;
	if the player cannot carry the moka heater, stop the action instead;
	if the player cannot carry the coffee funnel filter, stop the action.

After rubbing a moka-component:
	now the current moka is washed;
	set pronouns from the moka heater;
	say "[We] [go] to the sink and thoroughly wash all the parts of the moka."
	
Chapter Filling

Filling is an action applying to one thing.
Understand "fill [something] up/--" as filling.
Understand the command "refill" as "fill".

Check filling:
	if the noun is a moka-item, say "Oh, that would be too easy!" instead;
	unless the noun is a moka-component, say "It's not something to fill." instead;
	unless the current moka is washed, say "[/ss]You should always wash new things for the kitchen before using them.' [/se][Monica] [remember] [us]." instead;
	if the noun is the moka pot, say "[/ss]Come on now, don't be silly.' [/se][Monica] [comment] [/ss1]I also know that's where the coffee collects and you don't have to fill it up.' [/r][/n]" instead;
	if the noun is filled, say "[The noun] already [contain] the [if the noun is the moka heater]water[otherwise]coffee powder[end if]." instead;
	unless the noun is empty, say "It is best to remove [the list of things in the noun] first.";
	if the player cannot carry the moka heater, stop the action;
	if the noun is the coffee funnel filter:
		unless the moka heater is filled, say "[/ss]You might want to put the water in first.' [/se][Monica] [suggest]." instead;
		unless the noun is in the moka heater, say "[/ss]I would put the filter in the heater before filling it,' [/se][Monica] [advise] [/ss1]because when it is full it is difficult to handle without spilling all the powder.' [/r][/n]" instead;
		unless the player carries the roasted coffee jar, say "[/ss]But what are you going to fill it with?' [/se][Monica] [ask] [/ss1]I think you should take the [roasted coffee jar].' [/r][/n]" instead;
		unless the roasted coffee jar is open, say "It is difficult to take the powder from a closed [roasted coffee jar]." instead;
		unless the player carries the teaspoon, say "[/ss]You'd better help yourself with a teaspoon.' [/se][Monica] [suggest][if the teaspoon is in a top drawer] [/ss1]You will find it in the top drawer.' [/r][otherwise]. [end if][/n]" instead.

Carry out filling:
	now the noun is filled.
	
Report filling:
	say "Now [the noun] is filled with [if the noun is the moka heater]some water[otherwise]the coffee powder[end if]."		
	
Chapter Guide

The written paper sheet is a paper-item in the coffee funnel filter.
Understand "readme/guide/booklet" as the written paper sheet.
The written paper sheet is folded.
The folded appearance is "A folded sheet of paper with the words ‘READ ME FIRST!’ clearly visible."

Section Front

Understand "English/Eng/Inglese" as "[english-lang]".
Understand "Italiano/Ita/Italian" as "[italiano-lang]".

To say intro-eng:
	say "Thanks for purchasing this moka.[/n]A moka is the best friend of those who love a good Italian coffee. And its charm shows no sign of going out of fashion.[/n]Moka still remains the queen of Italian kitchens today. For its practicality and manageability, no doubt, but also for its peculiar identity. Not to mention the taste: that of the coffee dispensed and also that of its preparation, a set of gestures that grow into a real ritual.[/n]Our mokas are designed to last and produce the best quality espresso coffee.[/n]To get the most out of your moka, please read the tips and warnings on the back of this sheet."
	
To say intro-ita:
	say "Complimenti per aver acquistato questa moka.[/n]La moka è la migliore amica di chi ama un buon caffè italiano. E il suo fascino non accenna a passare di moda.[/n]La moka rimane ancora oggi la regina delle cucine italiane. Per la sua praticità e maneggevolezza, senza dubbio, ma anche per la sua peculiare identità. Per non parlare del gusto: quello del caffè erogato e anche quello della sua preparazione, un insieme di gesti che si trasformano in un vero e proprio rito.[/n]Le nostre moka sono progettate per durare nel tempo e produrre caffè espresso di ottima qualità.[/n]Per ottenere il massimo dalla tua moka leggi i consigli e le avvertenze sul retro di questo foglio."
	
Table of front guide contents
paper-topic (a topic)	read	title	text
"[english-lang]"	false	"English"	"[intro-eng]"
"[italiano-lang]"	false	"Italiano"	"[intro-ita]"

The arguments of the written paper sheet's front side are the table of front guide contents.
The description of the written paper sheet's front side is "In addition to the words ‘READ ME FIRST!’ which can be read even when folded, there are blocks of text in two languages: [list of topics of the noun]."

Section Back

To say tips-eng:
	say "WARNINGS[/n]Read the instructions carefully as they contain important information about safety, use and maintenance of the product. [/n]IMPORTANT: READ THIS MANUAL THOROUGHLY AND KEEP IT WITH CARE FOR FUTURE REFERENCE.";
	say "These instructions are an integral part of the product and, throughout the entire life of the product, must be kept and be available. The documentation should be given to the subsequent owners of the product.";
	say "When using the coffee maker for the first time, wash thoroughly with water. [/n]Hand wash only without using detergents and abrasive sponges to preserve its features over the time.";
	say "Never use the coffee maker without water in the heater. [/n]Never use other liquids in the heater, the coffee maker is intended to be used with water only. [/n]The coffee maker is designed to be used only with water
and ground coffee for moka for household use.";
	say "Never press coffee into the funnel.";
	say "Make at least 3 cups of coffee, discarding them; do not drink the first 3 dispensing operations of coffee
as they are necessary for enhancing the aroma of coffee at best."
	
To say tips-ita:
	say "AVVERTENZE D’USO[/n]Leggere attentamente le avvertenze contenute nelle presenti istruzioni in quanto forniscono importanti indicazioni riguardanti la sicurezza, l’uso e la manutenzione del prodotto. [/n]IMPORTANTE: LEGGERE ATTENTAMENTE PRIMA DI OGNI UTILIZZO, CONSERVARE CON CURA QUESTO LIBRETTO PER OGNI ULTERIORE CONSULTAZIONE.";
	say "Le presenti istruzioni vanno considerate come parte integrante del prodotto e, per l’intera durata del prodotto, devono essere conservate ed essere disponibili. La documentazione deve essere consegnata a tutti i successivi proprietari del prodotto.";
	say "La prima volta che usate la caffettiera, lavare bene, solo con acqua. [/n]Lavare solo a mano, senza utilizzo di detergenti e spugne abrasive, per mantenere inalterate le sue qualità nel tempo.";
	say "Non utilizzare la caffettiera senza acqua nella caldaia. [/n]Non utilizzare altri liquidi nella caldaia: la
caffettiera deve funzionare solo con acqua. [/n]La presente caffettiera è destinata a essere utilizzata esclusivamente
solo con acqua e caffè macinato per moka per uso domestico.";
	say "Non pressare mai il caffè nell’imbuto.";
	say "Fare almeno 3 caffè a perdere; non consumare le prime 3 erogazioni di caffè in quanto necessarie per esaltare al meglio l’aroma del caffè."
	
To say picture of the parts:
	display the figure esploso;
	say "[/f](main components of a moka)[/r][/n]".

Understand "picture/figure/photo/draw of/-- moka/maker/-- parts/components/--" or "coffee/-- maker/moka/-- parts/components picture/figure/photo/draw/--" as "[parts-picture]".
		
Table of back guide contents
paper-topic (a topic)	read	title	text
"[english-lang]"	false	"English"	"[tips-eng]"
"[italiano-lang]"	false	"Italiano"	"[tips-ita]"
"[parts-picture]"	false	"Picture of parts"	"[picture of the parts]"

The arguments of the written paper sheet's back side are the table of back guide contents.
The description of the written paper sheet's back side is "The content is divided into three sections:  [list of topics of the noun]."


Book Coffee shop

The Coffee-Shop is a room.
The printed name is "In the coffee shop".
The description is "The essential-style shop is lined with shelves. [/n]Behind the counter is the espresso machine shelving, on one side the capsules shelving and on the opposite side the roasted coffee shelving. [/n]Next to the shop window is a small open shelf with moka pots on display."
The Coffee-Shop is inside from street-3.

Instead of taking something not paid when the player is in the coffee-shop:
	if the noun is enclosed by the player, continue the action;
	if the noun is a shelf-item, say "It is well secured." instead;
	say "Perhaps it would be best to ask [Marco] for it."

Chapter Selling

The brown shopper is shopper-item. It is sellable.
The description is "A raw paper shopper."

Coffee-type is a kind of value.
The coffee-types are soft, classic, strong, arabica, vanilla, and monocolture.

Does the player mean buying the coffee capsules box: it is likely.
Does the player mean buying the natural aluminium moka: it is likely.
Instead of buying: 
	if the location of the player is the coffee-shop, try requesting the current interlocutor for the noun;
	otherwise say "[We] [aren't] in a shop."

Topic-buying is an action applying to a topic.	
Understand "buy [text]" as topic-buying.
Instead of topic-buying: 
	if the location of the player is the coffee-shop, try imploring the current interlocutor for the topic understood;
	otherwise say "[We] [aren't] in a shop."

Understand the command "order" as "buy".
	
Section Coffee items

A coffee-item is a kind of container. 
A coffee-item is closed, openable and not lockable.
A coffee-item is sellable.
A coffee-item has a coffee-type.
A coffee-item has a table name called quality-list.

Does the player mean examining a coffee-item: it is likely.
Does the player mean taking a coffee-item: it is likely.
Instead of opening a coffee-item when the location of the player is the coffee-shop:
	say "[/ss]Ciccio, what's the rush?' [/se][Monica] [ask] [/ss1]We'll do it at home.' [/r][/n]".
Does the player mean opening a coffee-item: it is likely.

The coffee capsules box is a coffee-item in the coffee-shop. It is scenery.
Understand "blue/gray/white/black coffee/-- capsules/-- box" as the coffee capsules box.
The quality-list of the coffee capsules box is table of capsules qualities.
Coffee-type of the coffee capsules box is arabica.
Does the player mean examining the coffee capsules box: it is very likely.
Instead of opening the coffee capsules box:
	say "Capsules are not needed for the moka."

The roasted coffee jar is a coffee-item in the coffee-shop. It is scenery.
Understand "roasted/ground/-- coffee/-- foil/-- tin/can/jar/packet/package" as the roasted coffee jar.
The quality-list of  the roasted coffee jar is table of roasted qualities.
Coffee-type of the roasted coffee jar is classic.
Rule for printing the name of the roasted coffee jar:
	say "ground coffee ";
	choose the row with coffee-type of coffee-type of the roasted coffee jar in the quality-list of the roasted coffee jar;
	say "[Packaging-type entry]".

To decide if the coffee jar is a tin:
	choose the row with coffee-type of coffee-type of the noun in the quality-list of the noun;
	if the packaging-type entry is "tin", decide yes;
	decide no.
	
Instead of examining a coffee-item:
	choose the row with coffee-type of coffee-type of the noun in the quality-list of the noun;
	say "A [packaging-color entry] [packaging-type entry] [packaging-details entry].".

To say brief description of (item - coffee-item):
	choose the row with coffee-type of coffee-type of the item in the quality-list of the item;
	say "a [packaging-color entry] [packaging-type entry]".

To decide which real number is cost of (item - coffee-item):	 
	decide on the price corresponding to a coffee-type of coffee-type of the item in the quality-list of the item.
	
Does the player mean taking the coffee capsules box: it is very likely.

Before taking something sellable which is on the counter:
	if the noun is paid, continue the action;
	say "Just to let you know, you still haven't paid it." instead.

Before taking something which is in the brown shopper when the player is in the coffee-shop:
	say "You will do it when you get home." instead.

Chapter Tables 
	
Section Coffee qualities

Table of coffee qualities
Coffee-type	Flavour	Intro
arabica	"an unique combination of finest Arabica beans; perfect symphony of aromas with fruity and floral notes."	"You should be familiar with it"
soft	"a blend of fine natural and washed Arabica and high quality Robusta, it's slow, gentle roasting give it a smooth taste."	"This is for those who like delicate flavours"
classic	"a unique blend of Robusta and Arabica beans; an aromatic, smooth, well-rounded flavour, balanced between dried fruits and soft chocolate."	"I like it best at breakfast"
strong	"a coffee with an intense aftertaste and notes of cocoa and wood."	"For those who like strong and definite flavours"
vanilla	"a blonde roast notes of sweet vanilla and biscuit."	"It's pretty far from my taste"
monocolture	"a mono-origin of fine Brazilian Arabica, a balanced aroma with chocolate, dried fruit and honey notes."	"Ah, the conquering moustache, a product of cult"

Section Roasted qualities

Table of roasted qualities
Coffee-type	Price	Packaging-color	Packaging-type	Packaging-details	
arabica	4.99	"golden"	"foil packet"	"with gray and red text"
soft	3.99	"pink and blue"	"foil packet"	"with white text"
classic	4.50	"aluminium"	"tin"	"with red text"
strong	3.99	"red"	"foil packet"	"with white text"
monocolture	5.50	"white"	"tin"	"with a drawing of a man with a moustache"

Section Capsules qualities

Table of capsules qualities
Coffee-type	Price	Packaging-color	Packaging-type	Packaging-details	
arabica	4.20	"white"	"box"	"with golden text"
soft	3.50	"gray"	"box"	"with red text"
classic	3.50	"dark blue"	"box"	"with white text"
strong	3.50	"black"	"box"	"with golden text"
vanilla	3.89	"yellow"	"box"	"with brown text"

Chapter Movements

After going to the coffee-shop for the first time: 
	Marco welcomes you in 0 turns from now;
	continue the action.
At the time when Marco welcomes you:	
	say "[/ss]Good evening [Monica] and Francesco!' [/se][Marco] [welcome] you.";
	say "[/ss]Hi [Marco]!' [/se][Monica] [answer] [regarding Marco][them].";
	now the current interlocutor is Marco.
	
Instead of going nowhere when the player is in the coffee-shop: 
	say "If you really want to go somewhere else the only way is out."
	
Chapter Shelves

A shelf-item is a kind of supporter. It is scenery.

The espresso machines shelving is a shelf-item in the coffee-shop.
The description is "On the shelves behind the counter are several espresso machines.".
Understand "espresso/coffee/-- machine/machines shelf/shelves/shelving/shelvings" as the espresso machines shelving.

The capsules shelving is a shelf-item in the coffee-shop.
The description is "On the shelves to the left are many small, colorful boxes with different qualities of coffee. [/n]Your favourites are in white boxes with gold decorations.".
Understand "capsules/cartridges/capsule/cartridge shelf/shelves/shelving/shelvings" as the capsules shelving.

The roasted coffee shelving is a shelf-item in the coffee-shop.
The description is "On the shelves to the righ are foil packets and aluminium cans. [/n]They were the ones your mothers used (and still use) to make coffee in a moka pot.".
Understand "roasted/ground coffee/-- shelf/shelves/shelving/shelvings" or "tins/cans/jars/packets/packages shelf/shelves/shelving/shelvings/--" as the roasted coffee shelving.

The shelves are scenery in the coffee-shop.
Understand "shelvings/furniture" as the shelves.
Instead of examining the shelves:
	repeat with item running through shelf-items:
		try examining the item.

Chapter Counter

The counter is a shelf-item in the coffee-shop.
The description is "A pale, square-shaped wooden counter. [/n]On the front is a picture of jute sacks and unroasted coffee beans.".

A store-equipment is a kind of thing.

The cash register is a store-equipment. It is on the counter.
The description is "An ordinary red cash register."

The POS terminal is a store-equipment. It is on the counter.
The description is "A white device with a large display."
The display is part of the POS terminal.
The description is "It's off."

The store-equipments are fixed in place.

Instead of taking a store-equipment, say "There is no reason to take it."

Chapter Mokas

The moka pots open shelf is a shelf-item.
The description is "the window is a white wooden shelf; on it are [mokas list] moka pot."
Understand "moka/mokas pot/pots/-- shelf/shelves/shelving/shelvings" or "mokas/pots" or "moka pots" as the moka pots open shelf.
Instead of examining the moka pots open shelf: 
	if the player is in the street-3, say "Inside";
	otherwise say "Near";
	say " [description][/n]".

Does the player mean doing something with a moka-item enclosed by the counter: it is likely.

Section Available mokas

The natural aluminium moka is a moka-item on the moka pots open shelf.
Understand "traditional/classic natural/-- aluminiun/-- moka/--" as natural aluminium moka.
The color is "traditional natural aluminium".
The price is 16.90.

The tricolor moka is a moka-item on the moka pots open shelf.
The color is "green-white-red (as the italian flag)".

The black moka is a moka-item on the moka pots open shelf.
The color is "black".
Does the player mean buying the black moka: it is likely.
Does the player mean implicit-requesting the black moka: it is likely.

The red moka is a moka-item on the moka pots open shelf.
The color is "red".

The pink moka is a moka-item on the moka pots open shelf.
The color is "pink".

The stylish moka is a moka-item on the moka pots open shelf.
Understand "stylish/-- multi-colored/multicolor/multicoloed/multi-color checkered/-- moka/--" or "stylish/-- checkered moka/--" as the stylish moka.
The color is "stylish multi-colored checkered".
The price is 20.90.

To say mokas list:
	let L be a list of texts;
	repeat with item running through moka-items on the moka pots open shelf:
		add "a [the color of the item]" to L;
	say L.	
	
Book Kitchen

The Kitchen is a room.
The description is "The room is painted light yellow with the furniture and the appliances on one side. [/n]A photograph hangs on the opposite wall and a window lights up the room."

The photograph is a scenery in the kitchen.
The description is "The photo shows [us] and [Monica] standing close together on a sandy beach beside a scenic lake surrounded by tall trees and mountains. The lake's clear blue water extends into the distance, reflecting the surrounding landscape and sky. [/n][We] took this photo on one of your mountain walks."

The kitchen window is a scenery in the kitchen.
The description is  "A large window that lights up the room."

Chapter Table and chairs

The table is a supporter in the kitchen. It is fixed in place.
The description is "A light-coloured wooden top with metal support."
Rule for writing a paragraph about the table:
	say "In the middle of the room is a table surrounded by chairs[if a thing is on the table]. [/n]On the table [is-are a list of things on the table][end if]. [/n]".
	
The chair is a supporter in the kitchen. It is scenery. It is enterable.
The description is "Metal-framed chair with yellow plastic seat and back."
Understand "chairs" as the chair. 

Chapter Furniture

The furniture is a scenery in the kitchen.
The description is "It is made up of a worktop into which the sink and the hob are inserted; under the hob there is the oven and above it the extractor hood. [/n]To one side of the worktop is the fridge. [/n]There are two cabinets to the left and right of the hood. [status of cabinets][/run]"

Some appliances are scenery in the kitchen.
Instead of examining appliances:
	say "They are incorporated in the furniture. [/n][/run]";
	try examining the furniture.
	
Understand "lock [something]" as locking keylessly.
Locking keylessly is an action applying to one thing.
Understand "unlock [something]" as unlocking keylessly.
Unlocking keylessly is an action applying to one thing.

An unuseful-appliance is a kind of container.
An unuseful-appliance is closed.
Instead of opening an unuseful-appliance: say "There is nothing to take or put in [the noun]."
Instead of closing an unuseful-appliance: say "It's already closed."
Instead of locking keylessly an unuseful-appliance: say "There is no way to lock it."
Instead of unlocking keylessly an unuseful-appliance: say "It doesn't have a lock."

Section Worktop

The worktop is a supporter. It is part of the furniture.
The description is "A pink marble surface with scattered darker colored dots."
Understand "plane/marble/countertop" as the worktop.

Section Oven

The oven is an unuseful-appliance. It is part of the furniture.
The description is "A classic electric oven with a satin inox steel door and a large glass window in the centre.".
Understand "stove" as the oven.
Instead of switching on the oven: say "You don't have to cook anything in the oven."
Instead of switching off the oven: say "It's already off."

Section Fridge

The fridge is an unuseful-appliance. It is part of the furniture.
The description is "A spacious fridge with a rounded shape, painted light grey with metallic highlights. [/n]There are some magnets on the door."
Understand "refrigerator" as the fridge.
Instead of switching on the fridge: say "It's always on."
Instead of switching off the fridge: say "If you turn it off, you will spoil all the food in it."
Some magnets are part of the fridge. 
The description is "They are the colourful souvenirs of your travels."
Instead of taking magnets: say "[/ss]I don't understand why you want to remove them.' [/se][Monica] [say] in amazement."
Understand "magnet" as magnets.

Section Sink

The sink is part of the furniture.
The description is "Stainless steel sink."

Section Hob

The hob is a supporter. It is part of the furniture.
The description is "A stainless steel gas powered hob."
Understand "burner/flame/flames" as the hob.

The hob-switch is a device. It is part of the hob.
After switching on the hob-switch: say "[We] [light] the flame."
After switching off the hob-switch: say "[We] [extinguish] the flame."
Understand "extinguish [something]" as switching off.

Before putting something on the hob:
	unless the noun is a moka-item, say "[/ss]Don't be silly.' [/se][Monica] [suggest] [/ss1]You shouldn't put [the noun] on the hob.' [/r][/n]" instead.
Instead of switching on the hob: try switching on the hob-switch.
Instead of switching off the hob: try switching off the hob-switch.
	
Understand the command "fire" as "switch".

Section Hood

The extractor hood is device. It is part of the furniture.
The description is "A stainless steel hood with a high-tech design."

Section Furniture content

An unuseful-item is a kind of thing.
Instead of taking an unuseful-item: say "You don't need it."

Some cookware is an unuseful-item. The description is "Miscellaneous pots, pans and lids."

Some dishcloths are an unuseful-item.

Some cutlery are unuseful-item. The description is "Miscellaneous knives, forks, spoons and kitchenware."
The teaspoon is a thing. The description is "An ordinary teaspoon".
The pair of scissors is a thing. The description is "Multifunctional kitchen scissors."

Before inserting the teaspoon into a container:
	unless the second noun is a top drawer, say "[/ss]Don't mess up the kitchen,' [/se][Monica] [scold] [us] [/ss1]the cutlery drawer is the first.' [/r][/n]" instead.
Before putting back the teaspoon: try inserting the noun into a random top drawer instead.

Before inserting the pair of scissors into a container:
	unless the second noun is a top drawer, say "[/ss]Don't mess up the kitchen,' [/se][Monica] [scold] [us] [/ss1]the scissors have to be in the top drawer.' [/r][/n]" instead.
Before putting back the pair of scissors: try inserting the noun into a random top drawer instead.
	
Some crockery are an unuseful-item. 
Crockery is in the left cabinet.
The description is "Miscellaneous plates, glasses and other tableware."
Understand "tableware/glasses/glass/plate/plates/dish/dishes" as crockery.
A coffeecup is a kind of thing.
Two coffeecups are in the left cabinet. 
The description is "A white coffeecup with three coffee grains drawed on it."

Some food is an unuseful-item.
Food is in the right cabinet.
The description is "Boxes of macaroni, jars of preserves, spices and other foodstuffs."
Understand "macaroni/preserve/preserves/spice/spices" as food.

Section Cabinets

A cabinet-item is a kind of container. 
A cabinet-item is openable and not lockable.
A cabinet-item is usually closed.
Instead of locking keylessly a cabinet-item: say "There is no way to lock it."
Instead of unlocking keylessly a cabinet-item: say "It doesn't have a lock."
The description of a cabinet-item is "[if closed]A light cream-yellow lacquered wooden door[otherwise]A white wooden cabinet with shelves[end if]."
The left cabinet is a cabinet-item. It is part of the furniture.
The right cabinet is a cabinet-item. It is part of the furniture.

Understand "left/leftmost/first/-- cupboard/cabinet/locker" as the left cabinet.
Understand "right/rightmost/last cupboard/cabinet/locker" as the right cabinet.
Does the player mean examining the left cabinet: it is likely.
Does the player mean opening the left cabinet: it is likely.

To say status of cabinets:
	let O be the number of open cabinet-item;
	let C be the number of closed cabinet-item;
	let N be indexed text;
	if O is greater than C and C is greater than zero:
		let N be "[selection of cabinet-items conforming to the description closed cabinet-items is-are] closed, and [if O is less than 4]the other [O in words][otherwise]the rest[end if] open."; 
	otherwise:
		let N be "[selection of cabinet-items conforming to the description open cabinet-items is-are] open."; 
	say "[N in sentence case]".

Section Drawers

Three vertical drawers are part of the furniture.
The list total drawers rule response (A) is "Under the plane are also three drawers in a vertical column. ".

When play begins:
	let D be a random bottom drawer;
	now cookware is in D;
	let D be a random middle drawer;
	now dishcloths are in D;
	let D be a random top drawer;
	now cutlery is in D;
	now the teaspoon is in D;
	now the pair of scissors is in D.

Chapter Espresso machine

The espresso machine is on the worktop. It is fixed in place.

Chapter Actions

Instead of going nowhere from the kitchen: say "No need to go anywhere else."

Section Empty shopper

A thing can be from shopper.
Carry out an actor taking something when the noun is in the brown shopper: now the noun is from shopper.
After an actor taking something from shopper:
	now the noun is not from shopper;
	if the brown shopper is empty, Monica puts the shopper away in 0 turns from now;
	continue the action.

At the time when Monica puts the shopper away:
	say "[Monica] [take] the shopper, [fold] it and [put] it away.";
	now the brown shopper is nowhere.
	
Book Backdrops

Instead of taking a backdrop, say "Perhaps it would be helpful to consider what could be done with it." 

Chapter Sky

The sky is a backdrop. 
The description is "The sky is clear, just a few harmless clouds."
The sky is in the street.
Understand "top/overhead" as the sky.

Chapter Ground

The ground is a backdrop.
The description is "[if the location of the player is the kitchen]The floor is covered with pinkish streaked stoneware tiles[otherwise if the location of the player is the coffee-shop]The floor is covered with white tiles[otherwise]The road is paved with porphyry cobblestones, which are called 'sanpietrini' for short.[end if]."
The ground is everywhere.
Understand "terrain/land/soil/floor" as the ground.

Chapter Ceiling

The ceiling is a backdrop.
The description is "A white ceiling."
The ceiling is in the coffee-shop and in the kitchen.
Understand "roof/top/overhead" as the ceiling.

Chapter Walls

The wall is a backdrop.
The wall is in the coffee-shop and in the kitchen.
Understand "walls" as the wall.
Instead of examining the wall: try looking.

Chapter Large building windows

The large building windows is a backdrop.
The large building windows are in the street.

Chapter Main road

The main road is a backdrop.
The main road is in the street.
Understand "main/-- street" as the main road.
Instead of examining the main road: try looking.

Chapter Coffee shop window

The coffee shop window is a backdrop.
It is in the street-3 and in the coffee-shop.
The description is "Through the glass you can see a wooden shelf on which colored mokas are placed.".
Understand "coffee/capsules/-- store/shop window/door/entrance/--" or "window/door" as the coffee shop window.

Section mokas shelf

The moka pots open shelf is part of the coffee shop window.

To say behind the window: say "It's inside the window."
Instead of taking a moka-item when the player is in street-3, say behind the window.
Instead of touching a moka-item when the player is in street-3, say behind the window.
Instead of smelling a moka-item when the player is in street-3, say behind the window.

Section movements

Instead of opening the coffee shop window when the player is in the street-3: try going inside.
Instead of entering the coffee shop window when the player is in the street-3: try going inside.
Instead of opening the coffee shop window when the player is in the coffee-shop: try going outside.
Instead of entering the coffee shop window when the player is in the coffee-shop: try going outside.

Volume Characters

Book Player

The description of the player is "A guy, about 30 years old, ".
Hair of the player are "blond".
Eyes of the player are "blue".
Notes of the player are "You work as a software engineer, enjoy photography and love hiking in the mountains. [/n]In love with your girlfriend, very beautiful, but also shrewish when something doesn't go her way. In the end you always please her and she appreciates it. [/n]Monica sometimes calls you Ciccio".
The player is male.
The printed name of the player is "Francesco".
The carrying capacity of the player is 10.
The scent-description of the player is "the aftershave [/i]'for the man who never has to ask'[/r] that [Monica] gave [us]".
Understand "Ciccio/Francesco/me/myself/you/yourself" or "the/-- player/protagonist" as yourself.

Chapter Initial player dressing

The black t-shirt is a cloth. The description is "A black T-shirt with a surfer design on the front.".
Understand "black/-- shirt" as black t-shirt.

The pair of beige pants is a cloth. The description is "A pair of cotton beige pants.".
Understand "beige/-- trousers/trouser/pant" as the pair of beige pants.
The left pants pocket and the right pants pocket are pockets.
The left pants pocket and the right pants pocket are parts of the pair of beige pants.

The pair of blue sneakers is a cloth.

The player wears the black t-shirt, the pair of beige pants and the pair of blue sneakers.

Chapter Wallet

The wallet is a closed openable container in the left pants pocket.
The description is "A grey canvas wallet. It's a gift from Mo.".
Check the player opening the wallet:
	if the player cannot carry the noun, stop the action.

Instead of unfolding the wallet:
	try opening the noun.
Instead of folding the wallet:
	try closing the noun.

Section Content
			
An unuseful card is a kind of thing.	
The driving license, the identity card and  the supermarket fidelity card are unuseful cards.
Instead of examining the driving license, say "Your pink driving license.".
Instead of taking an unuseful card, say "Right now [the noun] is of no use to you.".
Instead of examining an unuseful card, say "Examining [the noun] now is a waste of time.".

The driving license, the credit card, the identity card, the supermarket fidelity card, the photo are in the wallet.
The description of the photo is "A photo of [Monica] you took last year at Lake Misurina with the Three Peaks of Lavaredo in the background.".		

The description of the credit card is "A red plastic card."
Understand "payment card" as the credit card.
Some money are in the wallet. The description of money is "It's only banknotes, coins annoy you.".
Instead of taking money, say "It's better to use a payment card.".

Understand "id card/document/--" or "your id/identity/-- card/document/documents" or "passport/document" as the identity card.
Instead of examining the identity card, say "A card folded into a booklet with your photo (slightly old) and your personal information.".

Section Handling

Does the player mean inserting the wallet into the left pants pocket: it is likely.
Before inserting the wallet into a pocket:
	if the noun is open, try closing the noun.

Before inserting something into the wallet:
	if the player cannot carry the wallet, stop the action;
	if the wallet is closed, try opening the wallet.
	
Putting back is an action applying to one thing.
Understand "put [something preferably held] back/away" as putting back.
Understand "put back/away [something preferably held]" as putting back.
Check putting back:
	unless the noun is the credit card or the noun is the wallet, say "I don't know where to put it." instead.
Carry out putting back:
	if the noun is the credit card, try inserting the noun into the wallet;
	if the noun is the wallet, try inserting the noun into the left pants pocket.

After putting back the credit card:
	say "Do you want to put your wallet away too?";
	if the player consents, try putting back the wallet.
	
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

Marco is a man in the coffee-shop.
The description is "A man aged about 45 with a slightly heavyset build, ".
Hair are "short brown".
Eyes are "brown".
Notes are "You are not his friends, but you know each other because you are his regular customers. And by now he knows your taste in coffee".
Marco is proper-named.
Understand "shop/store/-- salesperson/salesman/teller/cashier/assistant/attendant/manager" as Marco.

Rule for printing a locale paragraph about Marco:  say "[Marco] [are] managing the shop."

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

Volume Conversations

Book Coffee shop

Chapter Welcome

Welcome-completed is a truth state that varies.

Instead of hailing while the location is the coffee-shop:
	try saying hello to Marco.
Instead of saying hello to Marco:
	greet-in Marco;
	try implicit-requesting the coffee capsules box.
To greet-in Marco:
	now the current interlocutor is Marco;
	now welcome-completed is true;
	say "[/ss]Hi [Marco]!' [/se][we] [say]."
		
Section Choices

A choice-convnode is a kind of convnode.
A choice-convnode is closed and not auto-suggesting.
Default response for a choice-convnode:
	say "[/ss]Don't change the topic.' [/se][Monica] [say] [us] [/ss1]All you have to do is choose between the alternatives suggested.' [/r][/n]".

Understand the command "answer" as something new.
Understand the command "say" as something new.
Responding is an action applying to one topic.
Understand “answer [text]" as responding.
Understand the command "say" as "answer".	
Instead of responding: try imploring the current interlocutor for it.
	
Chapter Capsules

Capsules-requested is a truth state that varies.	
Does the player mean requesting for the coffee capsules box: it is likely.
Does the player mean implicit-requesting the coffee capsules box: it is likely.

Response of Marco when asked for the coffee capsules box:
	if capsules-requested is true, say "[/ss]But you already asked for them,' [/se][Monica] [remember] [us] [/ss1]don't be silly.' [/r][/n]" instead;
	if welcome-completed is false, greet-in Marco;
	say "[/ss]We're here because we're running low on coffee capsules.' [/se][we] [explain] to [Marco].";
	initiate a conversation with Marco at capsules-offer-node.

To Marco takes the box of (t - coffee-type):
	now the coffee-type of the coffee capsules box is t;
	say "[Marco] [take] [brief description of the coffee capsules box] from the shelf and [put] it on the counter.";	
	say "[/ss]Here are your capsules.' [/se][regarding Marco][they] [state].[/n]";
	now the coffee capsules box is on the counter;
	now the coffee capsules box is not scenery;
	now the coffee capsules box is not fixed in place;
	now the price of the coffee capsules box is the cost of the coffee capsules box;
	now capsules-requested is true;
	if moka-requested is false, now next-node is moka-request-node;
	otherwise:
		now next-node is payment-node;
	initiate a conversation with Marco at next-node, immediately.

Chapter Coffee Qualities

To Marco explains flavour of (f - coffee-type):
	choose the row with coffee-type of f in the table of coffee qualities;
	say "[/ss][Intro entry]:' [/se][Marco] [one of][answer][or][reply][or][say][at random] then [one of][explain][or][add][at random] [/ss1][flavour entry]' [/r][/n]".

To Marco state the coffee price of (f - coffee-type):
	say "[/ss][one of]Now at[or]Its price is[at random] [price corresponding to a coffee-type of f in the table of roasted qualities in euro].' [/r][/n]".
	
To Marco state the capsules price of (f - coffee-type):
	say "[/ss][one of]Now at[or]Its price is[at random] [price corresponding to a coffee-type of f in the table of capsules qualities in euro].' [/r][/n]".
	
The capsules-offer-node is a choice-convnode.
Node-introduction for capsules-offer-node:
	now current context is coffee-choice-help;
	say "[/ss]Well,' [/se][Marco] [ask] [/ss1]the usual ones?' [/r][/p]";
	if the player consents:
		Marco takes the box of arabica;
	otherwise:
		say "[/ss]Do you want to try something different?' [/se][Marco] [ask] [us], then [add]: [/n]";
		say "[/ss]You usually buy a pure arabica blend, but I can also offer you a classic, a light or a strong blend instead.' [/r][/n]".
		
Section Classic
	
Understand "classic/standard/normal/ordinary blend/coffee/--" as "[classic blend]".
Response for Marco when asked-or-told about "[classic blend]":
	Marco explains flavour of classic.
Response for capsules-offer-node when asked-or-told about "[classic blend]":
	Marco explains flavour of classic;
	Marco state the capsules price of classic.

Response for capsules-offer-node when asked for "[classic blend]": Marco takes the box of classic.
Response for capsules-offer-node when answered that "[classic blend]": Marco takes the box of classic.

Section Arabica 

Understand "pure/100%/-- arabica blend/coffee/--" as "[arabica blend]".
Response for Marco when asked-or-told about "[arabica blend]":
	Marco explains flavour of arabica.
Response for capsules-offer-node when asked-or-told about "[arabica blend]":
	Marco explains flavour of arabica;
	Marco state the capsules price of arabica.
	
Response for capsules-offer-node when asked for "[arabica blend]":
	Marco takes the box of arabica.

Section Strong 

Understand "strong/intense blend/coffee/--" as "[strong blend]".
Response for Marco when asked-or-told about "[strong blend]":
	Marco explains flavour of strong.
Response for capsules-offer-node when asked-or-told about "[strong blend]":
	Marco explains flavour of strong;
	Marco state the capsules price of strong.	
	
Response for capsules-offer-node when asked for "[strong blend]":
	Marco takes the box of strong.

Section Soft 

Understand "light/soft/mild blend/coffee/--" as "[soft blend]".
Response for Marco when asked-or-told about "[soft blend]":
	Marco explains flavour of soft.
Response for capsules-offer-node when asked-or-told about "[soft blend]":
	Marco explains flavour of soft;
	Marco state the capsules price of soft.
	
Response for capsules-offer-node when asked for "[soft blend]":
	Marco takes the box of soft.
	
Section Vanilla

Understand "vanilla/sweet/flavoured/flavored blend/coffee/--" as "[vanilla blend]".
Response for Marco when asked-or-told about "[vanilla blend]":
	Marco explains flavour of vanilla.
Response for capsules-offer-node when asked-or-told about "[vanilla blend]":
	Marco explains flavour of vanilla;
	Marco state the capsules price of vanilla.
	
Response for capsules-offer-node when asked for "[vanilla blend]":
	Marco takes the box of vanilla.

Section Monocolture

To say unavailable in capsules: say "[/ss]Unfortunately, it is not available in capsules.' [/se][regarding Marco][they] [remark]."
	
Understand "monocolture/mono-origin/moustache/brazilian/paulista blend/coffee/--" as "[paulista]".
Response for Marco when asked-or-told about "[paulista]":
	Marco explains flavour of monocolture.
Response for capsules-offer-node when asked-or-told about "[paulista]":
	Marco explains flavour of monocolture;
	say unavailable in capsules.

Response for capsules-offer-node when asked for "[paulista]":
	say unavailable in capsules.
	
Chapter Mokas

Moka-requested is a truth states that varies.
The moka-request-node is a choice-convnode.
Next-node is roasted-coffee-node.
Node-introduction for moka-request-node:
	now current context is Moka-choice-help;
	say "[/ss]I would like to make coffee with a moka, the way our mothers used to do it.' [/se][Monica] [say], then [ask] [/ss1]Should we buy one of those colored ones?' [/r][/p]";
	if the player consents:
		say "[/ss]That's fine,' [/se][we] [answer] [/ss1]as long as you don't use it once and then abandon it.' [/r][/n]";
		say "[heart][/ss]Promise!' [/se][regarding Monica][they] [state] excited.";
	otherwise:
		say "[/ss]No!' [/se][we] [answer] annoyed [/ss1]It ends up the same as always: you use it once and then it becomes one of your ciaffi!' [/r][/p]";
		say "While Monica tries to soften you up with cuddles and eye candy, I try to explain what [/i]ciaffi[/r] are.";
		say "The [/i]ciaffi[/r] are obviously useless objects, perhaps sometimes humorous, but currently taking up space and gathering dust.";
		say "[/n][/ss]All right,' [/se][we] [say] at last, with a disconsolate air [/ss1]so you won't sulk for a week.' [/r][/n]";
	say "[/n][/ss]Well miss [Monica],' [/se][Marco] [ask] [/ss1]which color do you prefer?' [/r][/n]";
	say "[/ss]I let Fancesco choose,' [/se][Monica] [reply] looking at [us] [/ss1]after all he is the art director.' [/r][/n]";
	say "[We] [smile].".

To Marco takes (m - moka-item):
	if m is the natural aluminium moka:
		say "[/ss]Ciccio, but that's the usual moka.' [/se][Monica] [complain] [/ss1]Let's get a colored one.' [/r][/n]" instead;
	say "[Marco] [take] [the m] and [place] it on the counter.";
	now m is on the counter;
	now moka-requested is true.

Response for moka-request-node when asked for a moka-item:
	Marco takes the second noun;
	if the second noun is on the counter, say leavenode.
Response for Marco when asked for a moka-item:
	Marco takes the second noun;
	if the second noun is on the counter, initiate a conversation with Marco at roasted-coffee-node.
	
Default ask-for response for moka-request-node:
	say "[/ss]Actually, you have to choose a moka.' [/se][Monica] [remember] [us]."

Chapter Roasted coffee

The roasted-coffee-node is a choice-convnode.
Node-introduction for roasted-coffee-node:
	now current context is coffee-choice-help;
	say "[/ss]You need coffee for this one, too. Don't you?' [/se][Marco] [ask].[/n]";
	unless the player consents:
		say "[/ss]As we've never had a moka, we don't have its coffee either.' [/se][Monica] [reply] annoyed [/ss1]Were you planning to open the capsules and use those?' [/r][/p]";
		if the player consents:
			say "[/ss]Ciccio!' [/se][Monica] [exclaim] angry [/ss1]Now you have to stop playing those games you always play, what are they called? Interactive Fiction. It's time to get your feet back on the ground!' [/n][/r]";
			say "[/ss]I have played a few myself, they are nice.' [/se][Marco] [add] [/ss1]As for using the coffee of the capsules in the moka, it is best not to: it is ground differently and could clog the filters.' [/r][/n]";
		say "[/ss]Let's get serious and listen to what [Marco] proposes.' [/se][Monica] [suggest] [us].[/n]";
	say "[/ss]I can offer you an Arabica blend, like the ones you usually buy for the machine, a classic blend, ideal for breakfast, or even a light blend or a strong blend.' [/se][Marco] [explain]."

To Marco takes the package of (t - coffee-type):
	now the coffee-type of the roasted coffee jar is t;
	say "[Marco] [take] [brief description of the roasted coffee jar] from the shelf and [put] it on the counter.";	
	say "[/ss]Here is your coffee.' [/se][regarding Marco][they] [state].";
	now the roasted coffee jar is on the counter;
	now the roasted coffee jar is not scenery;
	now the roasted coffee jar is not fixed in place;
	now the price of the roasted coffee jar is the cost of the roasted coffee jar;
	if capsules-requested is true:
		now next-node is payment-node;
	otherwise:
		say "[/ss]Do you also need capsules for your espresso machine?' [/se][Marco] [ask].";
		if the player consents:
			now next-node is capsules-offer-node;
		otherwise:
			now next-node is payment-node;
	say leavenode.
	
Section Classic
	
Response for roasted-coffee-node when asked-or-told about "[classic blend]":
	Marco explains flavour of classic;
	Marco state the coffee price of classic.

Response for roasted-coffee-node when asked for "[classic blend]":
	Marco takes the package of classic.

Section Arabica 

Response for roasted-coffee-node when asked-or-told about "[arabica blend]":
	Marco explains flavour of arabica;
	Marco state the coffee price of arabica.
	
Response for roasted-coffee-node when asked for "[arabica blend]":
	Marco takes the package of arabica.

Section Strong 

Response for roasted-coffee-node when asked-or-told about "[strong blend]":
	Marco explains flavour of strong;
	Marco state the coffee price of strong.
	
Response for capsules-offer-node when asked for "[strong blend]":
	Marco takes the package of strong.

Section Soft 

Response for roasted-coffee-node when asked-or-told about "[soft blend]":
	Marco explains flavour of soft;
	Marco state the coffee price of soft.
	
Response for roasted-coffee-node when asked for "[soft blend]":
	Marco takes the package of soft.

Section Vanilla

To say available in capsules: say "[/ss]Unfortunately, it is available only in capsules.' [/se][regarding Marco][they] [remark]."

Response for roasted-coffee-node when asked-or-told about "[vanilla blend]":
	Marco explains flavour of vanilla;
	say available in capsules.
	
Response for roasted-coffee-node when asked for "[vanilla blend]":
	say available in capsules.

Section Monocolture

Response for roasted-coffee-node when asked-or-told about "[paulista]":
	Marco explains flavour of monocolture;
	Marco state the coffee price of monocolture.
	
Response for roasted-coffee-node when asked for "[paulista]":
	Marco takes the package of monocolture.


Chapter Payment

Payment-done is a truth state that varies.
The payment-node is a closed, not  auto-suggesting convnode.
Node-introduction for the payment-node:
	now current context is payment-help;
	say "[/ss]Anything else?' [/se][Marco] [ask].[/n]";
	if the player consents, say "[/ss]No, thank you, that's all we need.' [/se][Monica] [correct] [us].";	
	let L be the list of sellable things on the counter;
	say "[Marco] [take] a brown shopper from the counter, then [they] [put] [L with definite articles] inside.";
	now the brown shopper is on the counter;
	repeat with I running through L:
		now I is in the brown shopper;
	say "Then [regarding Marco][they] [type] on the cash register and [state] [/ss]The total amount is [total price of things in the brown shopper in euro].' [/r][/n]".	
	
Section Pay action

Understand the command "pay" as something new.
Paying is an action applying to nothing.
Understand "pay the/-- coffee/moka/total/amount/bill/--" or "pay to/-- the/-- Marco/seller" as paying.

Check paying:
	unless the location of the player is the coffee-shop, say "There is nothing to pay here." instead;
	if the payment-done is true, say "You have already paid." instead;
	unless the current node is payment-node, say "It's not time to pay yet." instead;
	unless the player carries the credit card:
		unless the player carries the wallet:
			carry out the implicitly taking activity with the wallet;
		if the wallet is closed:
			try opening the wallet;
		carry out the implicitly taking activity with the credit card.
				
Carry out paying:
	now the brown shopper is paid;
	repeat with item running through the things in the brown shopper:
		now the item is paid;
	now payment-done is true;
	say leavenode;
	now current context is leave-shop-help;
	Monica takes the shopper in 1 turn from now.
		
Report paying:
	say "You swipe your card at the POS and after a few moments a receipt will be printed out.";
	say "[/ss]All right, thank you.' [/se][Marco] [confirm]."

Section Post-pay activities

At the time when Monica takes the shopper:
	if the brown shopper is on the counter:
		say "[/ss]I'll take this one.' [/se][Monica] [say] pointing at the shopper.";
		now Monica carries the brown shopper.	

Section Exit

Before going from the coffee-shop:
	unless the brown shopper is enclosed by the coffee-shop, say "[/ss]But where are you going?' [/se][Monica] [draw] [our] attention [/ss1]We have not yet completed our purchases.' [/r][/n]" instead;
	if payment-done is false, say "[/ss][Marco] waits to be paid.' [/se][Monica] [remember] [us]." instead;
	if the brown shopper is on the counter, say "[/ss]You are forgetting the things you have bought.' [/se][Marco] [remember]." instead;
	if the player carries the credit card or the player carries the wallet:
		say "[/ss]It's OK that we're in a hurry to try our new moka,' [/se][Monica] [say] [/ss1]but you'd better put your ";
		if the player carries the credit card:
			say "credit card";
			if the player carries the wallet, say " and ";
		if the player carries the wallet, say "wallet";
		say " back.' [/r][/n]";
		stop the action;
	if bye-done is false, greet Marco;
	say "[We] and [Monica] [leave] the shop and quickly go home.";
	say "[/p][note style]About half an hour later. [/r][/p]";
	now the white shopper is nowhere;
	now the brown shopper is on the table;
	now the current moka is a random moka-item in the brown shopper;
	now the wallet is nowhere;
	now Monica is in the kitchen;
	now the player is in the kitchen;
	now the current context is kitchen-help;
	start the kitchen intro in 0 turns from now;
	stop the action.
		
Bye-done is a truth state that varies.	
To greet Marco:
	say "[/ss]Bye Marco!' [/se][we] [greet], then [Monica] [add] [/ss1]Bye-bye!' [/r][/n]";
	say "[/ss]Let me know how the moka works.' [/se][Marco] [reply] [/ss1]See you soon and thanks again.' [/r][/n]";
	now bye-done is true.

Instead of leavetaking:
	if bye-done is true, say "You have already said goodbye." instead;
	greet Marco.
		
Book Kitchen

To say Monica do not make coffee:
	say " [/ss1]I wouldn't know exactly how to do it, I used to watch my mother prepare the coffee, but I couldn't repeat the process.' [/r][/n]".

Player knows how to do is a truth state that varies.
	
At the time when start the kitchen intro:
	say "[/ss]Well, we are finally home.' [/se][we] [say] [/ss1]It is the right time for tea.' [/r][/n]";
	say "[/ss]But no, let's try the new moka now.' [/se][Monica] [reply] [/ss1]Will you take care of it?' [/r][/p]";
	if the player consents:
		say "[heart][/ss]Oh, you are so kind!' [/se][regarding Monica][they] [exclaim] [/ss1]Thank you so much.' [/r][/n]Then [they] [add][Monica do not make coffee]";
		now player knows how to do is true;
	otherwise:
		say "[/ss]So we have a problem:'  [/se][regarding Monica][they] [say][Monica do not make coffee]";	
		say "[heart][heart][heart][/ss]I need your help!' [/se][Monica] [look] at [us] sweetly [/ss1]You can do that, can't you?' [/r][/p]";
		if the player consents:
			say "[/ss]I'm not sure I can, but as usual it's up to me to sort out the mess you've made.' [/se][we] [answer]  in resignation.";
			say "[heart][/ss]Oh, my hero!' [/r][/n]";
			now player knows how to do is true;
		otherwise:
			say "[/ss]As it was meant to be.' [/se][we] [answer] rather annoyed [/ss1]You don't know how to use that damn moka, I don't either: it ends up taking up space and dust.' [/r][/n]";
			say "[heart][/ss]Come on, let's try it together!' [/se][Monica] [suggest], then [add] [/ss1]You’ve stared down mad scientists thousands of meters deep beneath alien seas, used the last of your strength to perform rituals of banishment abjuring abhorrent gods, and now you're afraid of a moka?'";
			say "[/ss]I know you're not going to lie, you read that somewhere, right?' [/se][we] [ask].";
			say "[Monica] [confirm] with a smile.";
		try Monica putting the current moka on the table;	
		say "[/ss]Let's start by opening it.' [/se][regarding Monica][they] [suggest] pointing at the moka.[/n]";
		set pronouns from the current moka;
	now the current context is moka-open-help;
	if the coffee capsules box is in the brown shopper:
		say "[/ss]Beh, let's put these in their place in the meantime.' [/se][Monica] [say] taking the capsules box.";
		now Monica carries the coffee capsules box;
		try silently Monica opening the right cabinet;
		try Monica inserting the coffee capsules box into the right cabinet;
		try silently Monica closing the right cabinet;
		Monica take out the jar in 1 turn from now.

Chapter First opening

At the time when Monica take out the jar:
	if the roasted coffee jar is in the brown shopper:
		try silently Monica taking the roasted coffee jar;
		now the roasted coffee jar is on the table;
		say "[Monica] [take] the [roasted coffee jar] from the shopper and [put] it on the table.";
	Monica urges opening moka in 1 turn from now.
	
At the time when Monica urges opening moka:
	unless the current moka is already opened:
		say "[/ss]In the meantime, open the moka so we can wash it.' [/se][Monica] [suggest]."

Chapter Washing

After unscrewing a moka-item for the first time:
	Monica urges washing in 0 turns from now;
	now current context is moka-wash-help;
	continue the action.
	
At the time when Monica urges washing:
	say "[/ss]Since you have opened it,' [/se][Monica] [advise] [/ss1]give it a good wash.' [/r][/n]".
	
After rubbing a moka-component:
	now the current moka is washed;
	say "The moka has been cleaned.";
	now the current context is moka-fill-help;
	Monica says bravo in 0 turns from now.
	
At the time when Monica says bravo:
	if the player knows how to do is true:
		say "[heart][/ss]You are so kind to make coffee for me.' [/se][Monica] [thank] [us].";
	otherwise:
		say "[/ss]So far, it's been straightforward, but now we're hit with a bit of a challenge.' [/se][we] [say] [/ss1]Any ideas on what to do next?' [/r][/n]";
		say "[heart][/ss]You are so clever!' [/se][Monica] [encourage] [us] [/ss1]I'm sure you'll find the perfect way to handle water and coffee powder.' [/r][/n]".

Chapter Coffee jar

Instead of opening the roasted coffee jar when the location of the player is the kitchen:
	if the noun is open, say "It's already open." instead;
	if the player cannot carry the noun, stop the action instead;
	if the coffee jar is a tin, continue the action instead;
	unless the player carries the pair of scissors:
		if the pair of scissors is in a top drawer:
			say "[/ss]The scissors are in the top drawer.' [/se][Monica] [suggest].";
		otherwise:
			say "[/ss]You need a pair of scissors to open it.' [/se][Monica] [say].";
		stop the action;
	continue the action.
	
Before closing the roasted coffee jar when the location of the player is the kitchen:
	unless the coffee jar is a tin:
		say "[/ss]No, you can't close it properly.' [/se][Monica] [state] [/ss1]Mum always asks if I need her empty coffee tins, so tomorrow I'll get one so we don't waste this good aroma.' [/r][/n]";
		say "[heart][/ss]Good idea, Mo!' [/se][we] [appreciate] the solution.";
		stop the action.
			
Chapter filling

After filling the coffee funnel filter:
	Monica congrats in 0 turns from now;
	now the current context is moka-onfire-help;
	continue the action.
	
At the time when Monica congrats:
	say "[heart][/ss]But you have done a very good job.' [/se][Monica] [congratulate] [us] [/ss1]Come on, close it up so that we can put it on the fire.' [/r][/n]".
	
Volume Help

Book help

Section Images

Figure esploso is the file "esploso.jpg".

Section Complex says

To say Moka open help:
	say "Why not open the moka and see what it looks like?";
	display the figure esploso;
	say "[/i](main components of a moka)[/r][/n]".

Section Contexts
	
Table of help topics (continued)
Context	Text
Street3-help	"You pointed out to Monica that the coffee capsules are running out."
Payment-help	"It's time to swipe your credit card."
leave-shop-help	"There is no longer any reason to stay in the shop."
Kitchen-help	"You are anxious to get your new moka up and running."
Coffee-choice-help	"[Marco] is waiting for you to say which type of coffee you prefer."
Moka-choice-help	"Looking at the mokas shelf you can see which colors are available."
Moka-open-help	"[Moka open help]"
Moka-wash-help	"All food and drink preparation utensils must be washed before use."
Moka-fill-help	"In order to make coffee, the moka needs to be filled with water and coffee powder."
Moka-onfire-help	"The moka, filled and closed, must be placed on the hob for the coffee to come out."

Book Credits

Table of credited peoples (continued)
Name (text)	Reason (text)
"Bing Image Creator"	"used to generate the cover art"
"Mike Russo"	"for inspiring the mad scientist gag"
"The Bialetti website"	"for the informations about the coffee makers"
"The Lavazza website"	"for the descriptions of the coffee qualities"
"The Ikea website"	"for inspiring the kitchen furniture"

[----]