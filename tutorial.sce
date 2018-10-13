; TUTORIAL source file for DAAD V2
; 20181013
;
; This database provides a way of adapting PAW & DAAD V1 sources to DAAD V2. 
; Note that flags which were automatically decremented no longer do so.
;
; English language template, recreated by Stefan Vogt, Pond Soft [17-7-18].
;
; Ticket - A tutorial adventure
;
;------------------------------------------------------------------------------
;
#include symbols.sce
;
/CTL    ;Control Section (null char is an underline)
_       
/TOK    ;Tokens as supplied with PAW under CP/M
_the_
_you_
_are_
ing_
_to_
_and
_is_
You_
and_
The_
n't_
_of_
_you
ing
ed_
_a_
_op
ith
out
ent
_to
_in
all
_th
_it
ter
ave
_be
ver
her
and
ear
You
_on
en_
ose
no
ic
ap
_b
gh
__
ad
is
_c
ir
ay
ur
un
oo
_d
lo
ro
ac
se
ri
li
ti
om
bl
ck
I_
ed
ee
_f
ha
pe
e_
t_
in
s_
th
,_
er
d_
on
to
an
ar
en
ou
or
st
._
ow
le
at
al
re
y_
ch
am
el
_w
as
es
it
_s
ll
do
op
sh
me
he
bo
hi
ca
pl
il
cl
_a
of
_h
tt
mo
ke
ve
so
e.
d.
t.
vi
ly
id
sc
_p
em
r_
;------------------------------------------------------------------------------
/VOC    ;Vocabulary
;                       Movements ie verbs and nouns < 14
N       2       noun
NORTH   2       noun
S       3       noun
SOUTH   3       noun
E       4       noun
EAST    4       noun
W       5       noun
WEST    5       noun
NE      6       noun
NW      7       noun
SE      8       noun
SW      9       noun
U       10      noun
UP      10      noun
D       11      noun
DOWN    11      noun
;                       Nouns   <20 means can be used as verbs
;                               <50 means a proper noun ie not an 'IT'
I       14      noun
INVEN   14      noun
ALL     20      noun
LOT     20      noun
EVERY   20      noun
;
TORCH	50	noun
BAG	51	noun
SANDW	52	noun
APPLE	53	noun
BUS	54	noun
TICKE	54	noun
LEAD	55	noun
ANORA	56	noun
GATE	57	noun
RAILI	58	noun
GRASS	59	noun
PATH	60	noun
BENCH	61	noun
POND	62	noun
BANDS	63	noun
IRON	63	noun
TREE	64	noun
BRANC	64	noun
LEAF	64	noun
;                       Verbs
GET     20      verb
TAKE    20      verb
G       20      verb
DROP    21      verb
REMOV   22      verb
WEAR    23      verb
R       24      verb
REDES   24      verb
QUIT    25      verb
Q       25      verb
STOP    25      verb
SAVE    26      verb
LOAD    27      verb
RAMSA   28      verb
RS      28      verb
RAMLO   29      verb
RL      29      verb
EXAMI   30      verb
SAY     31      verb
ASK     31      verb
TALK    31      verb
SPEAK   31      verb
PUT     32      verb
LOOK    33      verb
OPEN    34      verb
CLOSE   35      verb
SHUT    35      verb
SEARC	36	verb
LIGHT	37	verb
EXTIN	38	verb
POKE	39	verb
INSER	39	verb
HOLD	39	verb
READ	40	verb
RIDE	41	verb
MOUNT	41	verb
ABOUT	42	verb
;                               Adjectives
SMALL   2       adjective
BIG     3       adjective
LARGE   3       adjective
OLD     4       adjective
NEW     5       adjective
HARD    6       adjective
SOFT    7       adjective
SHORT   8       adjective
LONG    9       adjective
;
LIT	10	adjective
UNLIT	11	adjective
;                               Adverbs
QUICK   2       adverb
SLOWL   3       adverb
QUIET   4       adverb
LOUDL   5       adverb
CAREF   6       adverb
SOFTL   6       adverb
GENTL   6       adverb
;                               Prepositions
TO      2       preposition
FROM    3       preposition
IN      4       preposition
OUT     5       preposition
THROU   6       preposition
OVER    7       preposition
UNDER   8       preposition
BY      9       preposition
ON      10      preposition
OFF     11      preposition
AT      12      preposition
EXCEP   13      preposition
;                               Pronouns
IT      2       pronoun
THEM    2       pronoun
;                               Conjugations
AND     2       conjugation
THEN    2       conjugation
;
;------------------------------------------------------------------------------
/STX    ;System Message Texts
/0
It's too dark to see anything.

/1
I can also see 
/2
What now?
/3
What next?
/4
What should I do now?
/5
What should I do next?
/6
I was not able to understand any of that.

/7
I can't go in that direction.

/8
I can't do that.

/9
I have with me 
/10
I am wearing 
/11 ;*Spare
/12
Are you sure? 
/13
Would you like another go? 
/14 ;*Spare
/15
Ok.


/16
Press any key to continue.

/17 ;*You have taken
/18 ;*\sturn
/19 ;*s
/20 ;*.[CR]
/21 ;*You have scored
/22 ;*%[CR]
/23
I'm not wearing one of those.


/24
I can't.  I'm wearing the _.


/25
I already have the _.


/26
There isn't one of those here.


/27
I can't carry any more things.


/28
I don't have one of those.


/29
I'm already wearing the _.


/30     ;One upper case character only
Y
/31     ;One upper case character only
N
/32
More...
/33

>\s
/34

/35

Time passes...

/36
I now have the _.


/37
I'm now wearing the _.


/38
I've removed the _.


/39
I've dropped the _.


/40
I can't wear the _.


/41
I can't remove the _.


/42
I can't remove the _.  My hands are full.


/43
The _ weighs too much for me.


/44
The _ is in the 
/45
The _ isn't in the 
/46
, 
/47
 and 
/48
. 


/49
I don't have the _.


/50
I'm not wearing the _.


/51
.


/52
There isn't one of those in the 
/53
nothing at all.

/54 ;Letter for Tape
T
/55 ;Disc
D
/56
Drive not ready - press any key to retry.

/57
I/O Error.

/58
Disc or Directory may be full.

/59
Invalid filename.

/60
Type in name of file:
/61
Start tape.

/62
Tape or Disc?
;------------------------------------------------------------------------------
/MTX    ;Message Texts
/0
;------------------------------------------------------------------------------
/OTX    ;Object Texts
/0
a lit torch
/1
a bag
/2
a sandwich
/3
an apple
/4
a ticket
/5
a lead
/6
an anorak
/7
an unlit torch
;------------------------------------------------------------------------------
/LTX    ;Location Texts
/0	;Intro
The Ticket


While standing on the bus stop my bus ticket has been blown
away, can you help me to find it?


/1
I'm inside the bag!
/2
I'm standing by a bus stop, on a road which runs North to
South. To the West a park gate set in iron railings stands
open.
/3
The grass on which I stand is neatly trimmed. To the North is
a path and bench while to the West is an ornamental pod.
/4
I am on a gravel path running East to West, by a park bench,
to the South is a grassy area while to the North I can see a
bandstand.
/5
I am standing on the bandstand which appears to be made of
ornate cast iron painted white. To the South is a path.
/6
The sun glitters on the surface of the ornamental pond, whose
waters ripple in the gentle breeze. A path running North towards
a large tree, while to the East is a grassy area.
/7
The path curves South and East here beside a large tree.
/8
I am sitting on a branch in a broad leaved tree, the park is
spread out before me, to the East I can see the bus stop
through the gate in the railings.
;------------------------------------------------------------------------------
/CON    	;Connections
/0		;Start of game
N	2
/1		;In bag
N	2
/2		;Bus stop
W	4
/3		;By bench
N	4
W	6
NW	7
/4		;Path
N	5
E	2
S	3
SW	6
W	7
/5		;Bandstand
S	4
/6		;Pond
N	7
NE	4
E	3
/7		;By tree
U	8
NE	5
E	4
SE	3
S	6
/8		;Up the tree
D	7
;------------------------------------------------------------------------------
/OBJ    ;Object Definitions
;obj  starts  weight    c w  5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0    noun	adjective
;num    at
/0      252	1       _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _    TORCH	LIT
/1	2	3	Y _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	BAG	_
/2	CARRIED	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	SANDW	_
/3	CARRIED	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	APPLE	_
/4	8	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	TICKET	_
/5	3	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	LEAD	_
/6	WORN	3	_ Y  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	ANORA	_
/7	CARRIED	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	TORCH   UNLIT
;------------------------------------------------------------------------------
/PRO 0       ;Main Location Loop

_       _       AT      0               ; Starting game
                PROCESS 6               ; then we need init sequence

_       _       WINDOW  0               ; Select graphics window
                CLEAR   DarkF           ; Assume light
;                MINUS   2       1       ; Decrement flag 2    (See notes)
                NOTZERO 0
;                MINUS   3       1       ; & Flag 3 if Dark    (See notes)
                ABSENT  0
;                MINUS   4       1       ; & Flag 4 if No Lamp (See notes)
                SET     DarkF           ; Dark

_       _       PICTURE [Player]        ; If there is a picture, Load it
                DISPLAY [DarkF]         ; & Display it if not dark, else CLS

_       _       WINDOW  1
                NOTZERO DarkF           ; Dark
                SYSMESS 0

_       _       ZERO    DarkF
                DESC    [Player]        ; Doesn't exit loop now

_       _       PROCESS 3

; Now we use Process 1 as the main code loop, a return from it is the end
; of the game

_       _       PROCESS 1

;------------------------------------------------------------------------------
/PRO 1
_       _       PROCESS 4               ; Do process 2 stuff here

;_       _       MINUS   5       1       ; Update auto flags
;                MINUS   6       1       ; These are not supported anymore
;                MINUS   7       1       ; as we use the low section as
;                MINUS   8       1       ; a small stack
;                NOTZERO 0               ; But should you need them
;                MINUS   9       1       ; this is the Version 1 DAAD code!
;                ABSENT  0
;                MINUS   10      1

;_	_	MINUS	5	1	; Used in Process 10

_       _       PARSE   0               ; Get next LS from current buffer
                PROCESS 2               ; Failed cos of invalid or timeout
                REDO

_       _       EQ      Turns   255     ; Max for one byte
                PLUS    Turns+1 1
                CLEAR   Turns
                SKIP    1

_       _       PLUS    Turns   1

_       _       PROCESS 5               ; Do any commands
                ISDONE                  ; Done something
                REDO

_       _       MOVE    Player          ; No so try to move player
                RESTART                 ; Absolute jump to start process 0

_       _       NEWTEXT
                LT      Verb    14
                SYSMESS 7
		NEWLINE
                REDO

_       _       SYSMESS 8
		NEWLINE
                REDO


;------------------------------------------------------------------------------
/PRO 2
_       _       HASAT TIMEOUT
                SYSMESS 35
                DONE

_       _       SYSMESS 6               ; I didn't understand
		NEWLINE

;------------------------------------------------------------------------------
/PRO 3 ; Old process 1. Note that both the response table and the old PAW 
; process tables 1 and 2 can now be anywhere or completely absent. Everything
; is implemented in the DAAD language itself.

_	_	ABILITY	4	10

_	_	LET	53	64   ; object lists printed as sentences.

_       _       AT      0
                ANYKEY
                GOTO    2
                RESTART

; This is better carried out thus ...

_       _       NEWLINE
                ZERO    DarkF            ; Isn't dark
		NEWLINE
                LISTOBJ

; ... than the old system needed in Version 1, without accesss to DarkF

;_       _       NEWLINE
;                ZERO    0               ;If it is light...
;                ABSENT  0               ;and the light source is absent...
;                LISTOBJ                 ;List the objects

;_       _       PRESENT 0               ;If the light source is present...
;                LISTOBJ                 ;List the objects

;------------------------------------------------------------------------------
/PRO 4 ; Old process 2


;------------------------------------------------------------------------------
/PRO 5 ; Old response table - Command decoder

I       _       SYSMESS 9
                LISTAT  CARRIED         ; 254
                SYSMESS 10
                LISTAT  WORN            ; 253
                NEWLINE
                DONE

GET     ALL     DOALL   HERE
GET     _       AUTOG
                DONE

DROP    ALL     DOALL   CARRIED
DROP    _       AUTOD

REMOVE  ALL     DOALL   WORN
REMOVE  _       AUTOR
                DONE

WEAR    ALL     DOALL   CARRIED
WEAR    _       AUTOW
                DONE

R       _       RESTART

QUIT    _       QUIT
                END

QUIT    _       DONE                    ;Not like QUIT on PAW

SAVE    _       SAVE    0               ;ditto
                RESTART

LOAD    _       LOAD    0
                RESTART

RAMSA   _       RAMSAVE
                RESTART

RAMLO   _       RAMLOAD 255             ;Reload all flags
                RESTART

LOOK    _       RESTART

;------------------------------------------------------------------------------

/PRO 6 ; Initialise the DAAD system

_       _       WINDOW  1               ; Windows are random
_       _       WINAT   0       0       ; set 14 0 for split screen with GFX
                WINSIZE 25      127     ; Maximum window
                CLS
                DESC    0               ; Introduction
                ANYKEY
                CLS
                CLEAR   255             ; Clear all flags

_       _       NOTEQ   255     GFlags
                CLEAR   [255]

_       _       PLUS    255     1
                LT      255     255     ; Will be set at end to indicate init
                SKIP    -1              ; has been done once

_       _       RESET                   ; Set objects to start location & Flag 1
                LET     Strength 10
                LET     MaxCarr  4
                SET     CPNoun
                SET     CPAdject
                GOTO    1               ; Main game
