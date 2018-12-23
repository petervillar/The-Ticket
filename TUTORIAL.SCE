;
; TUTORIAL source file							16/12/18
;
#include symbols.sce
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
ASCEN   10      verb
D       11      noun
DOWN    11      noun
DESCE   11      verb
;                       Nouns   <20 means can be used as verbs
;                               <50 means a proper noun ie not an 'IT'
I       14      noun
INVEN   14      noun
ALL     20      noun
LOT     20      noun
EVERY   20      noun
;
DOG	21	noun
BIRD	22	noun
;
HERE	37	noun
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
DROP    21      verb
PUT     21      verb
REMOV   22      verb
WEAR    23      verb
R       24      verb
REDES   24      verb
QUIT    25      verb
Q	25	verb
STOP    25      verb
SAVE    26      verb
LOAD    27      verb
RAMSA   28      verb
RAMLO   29      verb
LOOK    30      verb
EXAMI   30      verb
X	30	verb
SAY     31      verb
ASK     31      verb
TALK    31      verb
SPEAK   31      verb
TIE	34	verb
UNTIE	35	verb
SIT	36	verb
STAY	36	verb
COME	37	verb
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
OK.

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

> 
/34 ;*Spare
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
I can't remove the _. My hands are full.

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
Nothing.

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
The apple is crisp and green.
/1
It's a cheese and pickle sandwich.
/2
The ticket has "City Bus Company" printed on it.
/3
The bench is firmly screwed to a concrete base.
/4
The bus arrives. I hand the ticket to the driver who
smiles and says "Sorry I'm late, hope you haven't been
standing too long?".
/5
In the bag there is:
/6
The bird drops the ticket to peck at the sandwich.
/7
The bird snatches the ticket.
/8
The bird ignores me.
/9
A small bird is here.
/10
The bird has a ticket in its beak.
/11
A small bird settles on the ground.
/12
A small bird lands on the branch.
/13
The bird sees the dog and flutters away quickly.
/14
The bird flies away..
/15
The _ falls to the ground at the foot of the tree.
/16
The dog's bright eyes stare at me with mindless love.
/17
A dog is here.
/18
The dog follows me wagging its tail.
/19
A lead trails behind the dog.
/20
The dog is tied to the bench by a lead.
/21
Trustingly the dog lets me put the lead around its neck.
/22
I've tied the lead to the bench.
/23
Who should I say it to?
/24
The dog is sitting quietly.
/25
I've untied the dog from the bench.
/26
I can't see anything special about the _.
/27
There's nothing special about it.
;------------------------------------------------------------------------------
/OTX    ;Object Texts
/0
A lit torch.
/1
A bag.
/2
A sandwich.
/3
An apple.
/4
A ticket.
/5
A lead.
/6
An anorak.
/7
An unlit torch.
;------------------------------------------------------------------------------
/LTX    ;Location Texts
/0
The Ticket


While standing on the bus stop my bus ticket has been blown
away, can you help me to find it?


/1
I'm inside the bag!
/2
I'm standing by a bus stop, on a road which runs north to south. To the west
a park gate set in iron railings stands open.
/3
The grass on which I stand is neatly trimmed. To the north is a path and bench
while to the west is an ornamental pond.
/4
I am on a gravel path running east to west, by a park bench, to the south is a
grassy area while to the north I can see a bandstand.
/5
I am standing on the bandstand which appears to be made of orname cast iron
painted white. To the south is a path.
/6
The sun glitters on the surface of the ornamental pond, whose watters ripple
in the gentle breeze. A path runs north towards a large tree, while to the
east is a grassy area.
/7
The path curves south and east here beside a large tree.
/8
I am sitting on a branch in a broad leaved tree, the park is spread out before me,
to the east I can see the bus stop through the gate in the railings..
;------------------------------------------------------------------------------
/CON    ;Connections
/0
/1
N	2
/2
W	4
/3
N	4
W	6
NW	7
/4
N	5
E	2
S	3
SW	6
W	7
/5
S	4
SW	7
/6
N	7
NE	4
E	3
/7
U	8
NE	5
E	4
SE	3
S	6
/8
D	7
;------------------------------------------------------------------------------
/OBJ    ;Object Definitions
;obj  starts  weight    c w  5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0    noun   adjective
;num    at
/0      254	1       _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _    TORCH	LIT
/1	2	3	Y _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	BAG	_
/2	254	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	SANDW	_
/3	254	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	APPLE	_
/4	252	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	TICKE	_
/5	3	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	LEAD	_
/6	253	3	_ Y  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	ANORA	_
/7	252	1	_ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _	TORCH	UNLIT
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

_       _       MINUS   5       1       ; Update auto flags
;                MINUS   6       1       ; These are not supported anymore
;                MINUS   7       1       ; as we use the low section as
;                MINUS   8       1       ; a small stack
;                NOTZERO 0               ; But should you need them
;                MINUS   9       1       ; this is the Version 1 DAAD code!
;                ABSENT  0
;                MINUS   10      1

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
                SYSMESS 7		; "I can't go in that direction."
                REDO

_       _       SYSMESS 8		; "I can't do that."
                REDO

;------------------------------------------------------------------------------
/PRO 2
_       _       HASAT TIMEOUT
                SYSMESS 35
                DONE

_       _       SYSMESS 6               ; I didn't understand

;------------------------------------------------------------------------------
/PRO 3 ; Old process 1. Note that both the response table and the old PAW 
; process tables 1 and 2 can now be anywhere or completely absent. Everything
; is implemented in the DAAD language itself.

;This is better carried out thus
;_       _       NEWLINE
;                ZERO    DarkF            ; Isn't dark
;                LISTOBJ

;than the old system needed in Version 1, without accesss to DarkF
;_       _       NEWLINE
;                ZERO    0               ;If it is light...
;                ABSENT  0               ;and the light source is absent...
;                LISTOBJ                 ;List the objects

;_       _       PRESENT 0               ;If the light source is present...
;                LISTOBJ                 ;List the objects

_	_	NEWLINE
		ZERO	0
		LISTOBJ

_	_	NOTZERO	0
		PRESENT	0
		LISTOBJ

; is the dog 'ere?

_	_	SAME	13	38
		MESSAGE	17
		EQ	14	1
		MESSAGE	19

_	_	AT	4
		SAME	13	38
		EQ	14	2
		MESSAGE	20

_	_	SAME	13	38
		GT	14	2
		MESSAGE	24

; is the bird there?

_	_	SAME	12	38
		MESSAGE	9
		ISAT	4	252
		MESSAGE 10

;------------------------------------------------------------------------------
/PRO 4 ; Old process 2

_	_	PROCESS	8		; Dog

_	_	PROCESS	7		; Bird

_	_	AT	2
		CARRIED	4
		NEWLINE
		MESSAGE	4
		NEWLINE
		END

;------------------------------------------------------------------------------
/PRO 5 ; Command decoder

I       _       SYSMESS 9
                LISTAT  CARRIED
                SYSMESS 10
                LISTAT  WORN
                DONE

EXAMI	APPLE	PRESENT	3
		MESSAGE	0
		DONE

EXAMI	SANDW	PRESENT	2
		MESSAGE	1
		DONE

EXAMI	TICKET	PRESENT	4
		MESSAGE	2
		DONE

EXAMI	BENCH	AT	4
		MESSAGE	3
		DONE

EXAMI	BAG	PREP	IN
		PRESENT	1
		MESSAGE	5
		LISTAT	1
		DONE

EXAMI	_	WHATO
		LT	51	255
		GT	54	252
		MESSAGE	26
		DONE

EXAMI	_	WHATO
		LT	51	255
		SAME	38	54
		MESSAGE	26
		DONE

EXAMI	_	WHATO
		LT	51	255
		SYSMESS	26
		DONE

EXAMI	_	EQ	34	255
		NOTDONE

EXAMI	_	MESSAGE	27
		DONE

GET	TICKET	SAME	12	38
		ISAT	4	252
		CLEAR	5
		NOTDONE

TIE	DOG	LET	34	55	; 55 = lead
TIE	LEAD	PREP	TO
		NOUN2	BENCH
		AT	4
		SAME	13	38
		EQ	14	1
		PLUS	14	1
		MESSAGE	22
		DONE
TIE	_	NOTDONE

UNTIE	DOG	LET	34	55
UNTIE	LEAD	AT	4
		EQ	14	2
		CLEAR	14
		MESSAGE	25
		CREATE	5
		GET	5
		DONE
UNTIE	_	NOTDONE

SAY	DOG	SAME	13	38
		PROCESS	9
		DONE

SAY	BIRD	SAME	12	38
		MESSAGE	8
		DONE

SAY	_	MESSAGE	23
		DONE

GET	ALL	PREP	OUT
		NOUN2	BAG
		DOALL	1
GET     ALL     DOALL   HERE
GET	_	PREP	OUT
		NOUN2	BAG
		PRESENT	1
		AUTOT	1
		DONE
GET     _       AUTOG
                DONE

DROP    ALL     DOALL   CARRIED
DROP	_	PREP	IN
		NOUN2	BAG
		PRESENT	1
		AUTOP	1
		DONE
DROP	_	AT	8
		WHATO
		LT	51	255
		EQ	54	254
		MESSAGE	15
		PUTO	7
		DONE
DROP	LEAD	PREP	ON
		NOUN2	DOG
		CARRIED	5
		SAME	38	13
		LET	14	1
		DESTROY	5
		MESSAGE	21
		DONE
DROP    _       AUTOD
                DONE


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

;LOOK    _       RESTART
;------------------------------------------------------------------------------
/PRO 6 ; Initialise the DAAD system

_       _       WINDOW  1               ; Windows are random
_       _       WINAT   0       0
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
                SKIP    -2              ; has been done once

_       _       RESET                   ; Set objects to start location & Flag 1
                LET     Strength 10
                LET     MaxCarr  4
                SET     CPNoun
                SET     CPAdject
		LET	12	8	; Bird is on branch
		LET	13	2	; Dog is at the bus stop
		LET	14	0	; Dog is free to roam
		LET	53	64	; object lists printed as sentences
                GOTO    2               ; Main game

;------------------------------------------------------------------------------

/PRO 7 ; Bird

; ticket snatching

_	_	COPYOF	4	11
		SAME	11	12
		ZERO	5
		DESTROY	4
		SAME	12	38
		MESSAGE	7

; movement

_	_	EQ	12	8
		ZERO	5
		LET	12	5
		LET	5	3
		AT	8
		MESSAGE	14

_	_	EQ	12	5
		ZERO	5
		LET	12	8
		LET	5	3
		AT	5
		MESSAGE	14

; bird's arrival

_	_	EQ	5	3	
		SAME	12	38
		AT	5
		MESSAGE	11

_	_	EQ	5	3
		SAME	12	38
		AT	8
		MESSAGE	12

; has the bird the ticket?

_	_	EQ	5	3
		SAME	12	38
		ISAT	4	252
		MESSAGE	10

; bird and dog at the same location

_	_	SAME	12	13
		LET	12	8
		LET	5	3
		AT	5
		MESSAGE	13

; bird drops ticket to peck at sandwich

_	_	COPYOF	2	11
		SAME	11	12
		ISAT	4	252
		CREATE	4
		SAME	12	38
		MESSAGE	6

;------------------------------------------------------------------------------

/PRO 8 ; Dog

; Dog follows

_	_	LT	14	2
		NOTSAME	13	38
		NOTAT	8
		COPYFF	38	13
		MESSAGE	18

;------------------------------------------------------------------------------

/PRO 9
_	_	PARSE	1
		MESSAGE	16
		DONE

SIT	_	ZERO	14
		SET	14
		MESSAGE	24
		DONE

COME	_	EQ	14	255
		CLEAR	14
		MESSAGE	18
		DONE

_	HERE	EQ	14	255
		CLEAR	14
		MESSAGE	18
		DONE

_	_	MESSAGE	16
