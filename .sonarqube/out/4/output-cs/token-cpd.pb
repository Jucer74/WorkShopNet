ÿ
Gd:\Repositories\WorkShopNet\src\WorkShopNet.App\IfStatementValidator.cs
	namespace 	
WorkShopNet
 
. 
App 
{ 
public 

class  
IfStatementValidator %
:& '
RulesValidations( 8
,8 9
IValidateMethod: I
{ 
public 
List 
< 
string 
> 
Validate $
($ %
string% +

identifier, 6
)6 7
{ 	
List		 
<		 
string		 
>		 
	errorList		 "
=		# $
new		% (
(		( )
)		) *
;		* +
if 
( #
IsNullOrEmptyIdentifier '
(' (

identifier( 2
)2 3
)3 4
{ 
	errorList 
. 
Add 
( 
ValidationMessages 0
.0 1&
NullOrEmptyIdentifierError1 K
)K L
;L M
} 
else 
{ 
if 
( 
!  
IsValidMinimunLength )
() *

identifier* 4
)4 5
)5 6
{ 
	errorList 
. 
Add !
(! "
ValidationMessages" 4
.4 5
MinimumLengthError5 G
)G H
;H I
} 
if 
( 
!  
IsValidMaximunLength )
() *

identifier* 4
)4 5
)5 6
{ 
	errorList 
. 
Add !
(! "
ValidationMessages" 4
.4 5
MaximumLengthError5 G
)G H
;H I
} 
if 
( 
! "
IsInitialCapitalLetter +
(+ ,

identifier, 6
)6 7
)7 8
{ 
	errorList 
. 
Add !
(! "
ValidationMessages" 4
.4 5%
InitialCapitalLetterError5 N
)N O
;O P
} 
} 
return!! 
	errorList!! 
;!! 
}"" 	
	protected$$ 
override$$ 
bool$$ "
IsInitialCapitalLetter$$  6
($$6 7
string$$7 =

identifier$$> H
)$$H I
{%% 	
return&& 
char&& 
.&& 
IsUpper&& 
(&&  

identifier&&  *
,&&* +
$num&&, -
)&&- .
;&&. /
}'' 	
	protected)) 
override)) 
bool)) #
IsNullOrEmptyIdentifier))  7
())7 8
string))8 >

identifier))? I
)))I J
{** 	
return++ 
base++ 
.++ #
IsNullOrEmptyIdentifier++ /
(++/ 0

identifier++0 :
)++: ;
;++; <
},, 	
	protected.. 
override.. 
bool..  
IsValidMaximunLength..  4
(..4 5
string..5 ;

identifier..< F
)..F G
{// 	
return00 

identifier00 
.00 
Length00 $
<=00% '
ValidationConstants00( ;
.00; <
	MaxLength00< E
;00E F
}11 	
	protected33 
override33 
bool33  
IsValidMinimunLength33  4
(334 5
string335 ;

identifier33< F
)33F G
{44 	
return55 

identifier55 
.55 
Length55 $
>=55% '
ValidationConstants55( ;
.55; <
	MinLength55< E
;55E F
}66 	
}77 
}88 ≈
Bd:\Repositories\WorkShopNet\src\WorkShopNet.App\IValidateMethod.cs
	namespace 	
WorkShopNet
 
. 
App 
{ 
public 

	interface 
IValidateMethod $
{ 
List 
< 
string 
> 
Validate 
( 
string $

identifier% /
)/ 0
;0 1
} 
}		 ô"
@d:\Repositories\WorkShopNet\src\WorkShopNet.App\PcreValidator.cs
	namespace 	
WorkShopNet
 
. 
App 
{		 
public

 

class

 
PcreValidator

 
:

  
RulesValidations

! 1
,

1 2
IValidateMethod

3 B
{ 
public 
List 
< 
string 
> 
Validate $
($ %
string% +

identifier, 6
)6 7
{ 	
List 
< 
string 
> 
	errorList "
=# $
new% (
(( )
)) *
;* +
if 
( #
IsNullOrEmptyIdentifier '
(' (

identifier( 2
)2 3
)3 4
{ 
	errorList 
. 
Add 
( 
ValidationMessages 0
.0 1&
NullOrEmptyIdentifierError1 K
)K L
;L M
} 
else 
{ 
if 
( 
!  
IsValidMinimunLength )
() *

identifier* 4
)4 5
)5 6
{ 
	errorList 
. 
Add !
(! "
ValidationMessages" 4
.4 5
MinimumLengthError5 G
)G H
;H I
} 
if 
( 
!  
IsValidMaximunLength )
() *

identifier* 4
)4 5
)5 6
{ 
	errorList 
. 
Add !
(! "
ValidationMessages" 4
.4 5
MaximumLengthError5 G
)G H
;H I
} 
if   
(   
!   "
IsInitialCapitalLetter   +
(  + ,

identifier  , 6
)  6 7
)  7 8
{!! 
	errorList"" 
."" 
Add"" !
(""! "
ValidationMessages""" 4
.""4 5%
InitialCapitalLetterError""5 N
)""N O
;""O P
}## 
}$$ 
return&& 
	errorList&& 
;&& 
}'' 	
	protected)) 
override)) 
bool)) "
IsInitialCapitalLetter))  6
())6 7
string))7 =

identifier))> H
)))H I
{** 	
var++ 
match++ 
=++ 
	PcreRegex++ !
.++! "
Match++" '
(++' (

identifier++( 2
,++2 3
ValidationConstants++4 G
.++G H1
%InitialCapitalLetterRegularExpression++H m
)++m n
;++n o
return,, 
match,, 
.,, 
Success,,  
;,,  !
}-- 	
	protected// 
override// 
bool// #
IsNullOrEmptyIdentifier//  7
(//7 8
string//8 >

identifier//? I
)//I J
{00 	
return11 
base11 
.11 #
IsNullOrEmptyIdentifier11 /
(11/ 0

identifier110 :
)11: ;
;11; <
}22 	
	protected44 
override44 
bool44  
IsValidMaximunLength44  4
(444 5
string445 ;

identifier44< F
)44F G
{55 	
var66 
match66 
=66 
	PcreRegex66 !
.66! "
Match66" '
(66' (

identifier66( 2
,662 3
ValidationConstants664 G
.66G H*
MaximumLengthRegularExpression66H f
)66f g
;66g h
return77 
match77 
.77 
Success77  
;77  !
}88 	
	protected:: 
override:: 
bool::  
IsValidMinimunLength::  4
(::4 5
string::5 ;

identifier::< F
)::F G
{;; 	
var<< 
match<< 
=<< 
	PcreRegex<< !
.<<! "
Match<<" '
(<<' (

identifier<<( 2
,<<2 3
ValidationConstants<<4 G
.<<G H*
MinimumLengthRegularExpression<<H f
)<<f g
;<<g h
return== 
match== 
.== 
Success==  
;==  !
}>> 	
}?? 
}@@ ˜&
:d:\Repositories\WorkShopNet\src\WorkShopNet.App\Program.cs
string$$ 
rightIdentifier$$ 
=$$ 
$str$$ $
;$$$ %
string%% &
badMinimumLengthIdentifier%% !
=%%" #
$str%%$ *
;%%* +
string&& &
badMaximumLengthIdentifier&& !
=&&" #
$str&&$ '
.&&' (
PadRight&&( 0
(&&0 1
ValidationConstants&&1 D
.&&D E
	MaxLength&&E N
+&&O P
$num&&Q R
,&&R S
$char&&T W
)&&W X
;&&X Y
string'' -
!badInitialCapitalLetterIdentifier'' (
='') *
$str''+ 7
;''7 8
Console,, 
.,, 
Clear,, 
(,, 
),, 
;,, 
Console-- 
.-- 
	WriteLine-- 
(-- 
$str-- !
)--! "
;--" #
Console.. 
... 
	WriteLine.. 
(.. 
$str.. !
)..! "
;.." #
Console// 
.// 
	WriteLine// 
(// 
)// 
;// !
ExecuteValidationMethod11 
(11 
ValidateMethods11 '
.11' (%
RegularExpressionValidate11( A
)11A B
;11B C!
ExecuteValidationMethod22 
(22 
ValidateMethods22 '
.22' (
IfStatementValidate22( ;
)22; <
;22< =!
ExecuteValidationMethod44 
(44 
ValidateMethods44 '
.44' (
PcreValidate44( 4
)444 5
;445 6
void88 #
ExecuteValidationMethod88 
(88 
Func88 !
<88! "
string88" (
,88( )
List88* .
<88. /
string88/ 5
>885 6
>886 7
validMethod888 C
)88C D
{99 
Process:: 
currentProcess:: 
=:: 
Process:: $
.::$ %
GetCurrentProcess::% 6
(::6 7
)::7 8
;::8 9
string<< 


methodName<< 
=<< 
validMethod<< #
.<<# $
Method<<$ *
.<<* +
Name<<+ /
;<</ 0
Console== 
.== 
	WriteLine== 
(== 
$str==  
,==  !

methodName==" ,
,==, -
$str==. 1
.==1 2
PadRight==2 :
(==: ;

methodName==; E
.==E F
Length==F L
,==L M
$char==N Q
)==Q R
)==R S
;==S T
	Stopwatch?? 
sw?? 
=?? 
	Stopwatch?? 
.?? 
StartNew?? %
(??% &
)??& '
;??' (
ListAA 
<AA 	
stringAA	 
>AA 
	errorListAA 
=AA 
newAA  
(AA  !
)AA! "
;AA" #
forCC 
(CC 	
intCC	 
iCC 
=CC 
$numCC 
;CC 
iCC 
<CC 
ValidationConstantsCC +
.CC+ ,
IterationlimitCC, :
;CC: ;
iCC< =
++CC= ?
)CC? @
{DD 
	errorListFF 
=FF 
validMethodFF 
(FF  
rightIdentifierFF  /
)FF/ 0
;FF0 1
	errorListGG 
=GG 
validMethodGG 
(GG  &
badMinimumLengthIdentifierGG  :
)GG: ;
;GG; <
	errorListHH 
=HH 
validMethodHH 
(HH  &
badMaximumLengthIdentifierHH  :
)HH: ;
;HH; <
	errorListII 
=II 
validMethodII 
(II  -
!badInitialCapitalLetterIdentifierII  A
)IIA B
;IIB C
}JJ 
swLL 
.LL 
StopLL 
(LL 
)LL 
;LL 
TimeSpanOO 
tsOO 
=OO 
swOO 
.OO 
ElapsedOO 
;OO 
stringPP 

elapsedTimePP 
=PP 
StringPP 
.PP  
FormatPP  &
(PP& '
$strPP' D
,PPD E
tsPPF H
.PPH I
HoursPPI N
,PPN O
tsPPP R
.PPR S
MinutesPPS Z
,PPZ [
tsPP\ ^
.PP^ _
SecondsPP_ f
,PPf g
tsPPh j
.PPj k
MillisecondsPPk w
/PPx y
$numPPz |
)PP| }
;PP} ~
longRR 

usedMemoryRR	 
=RR 
currentProcessRR $
.RR$ %
PrivateMemorySize64RR% 8
/RR9 :
$numRR; ?
;RR? @
ConsoleTT 
.TT 
	WriteLineTT 
(TT 
$strTT ?
,TT? @
elapsedTimeTTA L
,TTL M

usedMemoryTTN X
)TTX Y
;TTY Z
ConsoleUU 
.UU 
	WriteLineUU 
(UU 
)UU 
;UU 
}VV ß"
Md:\Repositories\WorkShopNet\src\WorkShopNet.App\RegularExpressionValidator.cs
	namespace 	
WorkShopNet
 
. 
App 
{ 
public 

class &
RegularExpressionValidator +
:, -
RulesValidations. >
,> ?
IValidateMethod@ O
{ 
public		 
List		 
<		 
string		 
>		 
Validate		 $
(		$ %
string		% +

identifier		, 6
)		6 7
{

 	
List 
< 
string 
> 
	errorList "
=# $
new% (
(( )
)) *
;* +
if 
( #
IsNullOrEmptyIdentifier '
(' (

identifier( 2
)2 3
)3 4
{ 
	errorList 
. 
Add 
( 
ValidationMessages 0
.0 1&
NullOrEmptyIdentifierError1 K
)K L
;L M
} 
else 
{ 
if 
( 
!  
IsValidMinimunLength )
() *

identifier* 4
)4 5
)5 6
{ 
	errorList 
. 
Add !
(! "
ValidationMessages" 4
.4 5
MinimumLengthError5 G
)G H
;H I
} 
if 
( 
!  
IsValidMaximunLength )
() *

identifier* 4
)4 5
)5 6
{ 
	errorList 
. 
Add !
(! "
ValidationMessages" 4
.4 5
MaximumLengthError5 G
)G H
;H I
} 
if 
( 
! "
IsInitialCapitalLetter +
(+ ,

identifier, 6
)6 7
)7 8
{ 
	errorList 
. 
Add !
(! "
ValidationMessages" 4
.4 5%
InitialCapitalLetterError5 N
)N O
;O P
}   
}!! 
return## 
	errorList## 
;## 
}$$ 	
	protected&& 
override&& 
bool&& "
IsInitialCapitalLetter&&  6
(&&6 7
string&&7 =

identifier&&> H
)&&H I
{'' 	
Regex(( 
regex(( 
=(( 
new(( 
Regex(( #
(((# $
ValidationConstants(($ 7
.((7 81
%InitialCapitalLetterRegularExpression((8 ]
)((] ^
;((^ _
return)) 
regex)) 
.)) 
IsMatch))  
())  !

identifier))! +
)))+ ,
;)), -
}** 	
	protected,, 
override,, 
bool,, #
IsNullOrEmptyIdentifier,,  7
(,,7 8
string,,8 >

identifier,,? I
),,I J
{-- 	
return.. 
base.. 
... #
IsNullOrEmptyIdentifier.. /
(../ 0

identifier..0 :
)..: ;
;..; <
}// 	
	protected11 
override11 
bool11  
IsValidMaximunLength11  4
(114 5
string115 ;

identifier11< F
)11F G
{22 	
Regex33 
regex33 
=33 
new33 
Regex33 #
(33# $
ValidationConstants33$ 7
.337 8*
MaximumLengthRegularExpression338 V
)33V W
;33W X
return44 
regex44 
.44 
IsMatch44  
(44  !

identifier44! +
)44+ ,
;44, -
}55 	
	protected77 
override77 
bool77  
IsValidMinimunLength77  4
(774 5
string775 ;

identifier77< F
)77F G
{88 	
Regex99 
regex99 
=99 
new99 
Regex99 #
(99# $
ValidationConstants99$ 7
.997 8*
MinimumLengthRegularExpression998 V
)99V W
;99W X
return:: 
regex:: 
.:: 
IsMatch::  
(::  !

identifier::! +
)::+ ,
;::, -
};; 	
}<< 
}== ¡

Cd:\Repositories\WorkShopNet\src\WorkShopNet.App\RulesValidations.cs
	namespace 	
WorkShopNet
 
. 
App 
{ 
public		 

abstract		 
class		 
RulesValidations		 *
{

 
	protected 
abstract 
bool "
IsInitialCapitalLetter  6
(6 7
string7 =

identifier> H
)H I
;I J
	protected 
virtual 
bool #
IsNullOrEmptyIdentifier 6
(6 7
string7 =

identifier> H
)H I
{ 	
return 
string 
. 
IsNullOrEmpty '
(' (

identifier( 2
)2 3
||4 6
string7 =
.= >
IsNullOrWhiteSpace> P
(P Q

identifierQ [
)[ \
;\ ]
} 	
	protected 
abstract 
bool  
IsValidMaximunLength  4
(4 5
string5 ;

identifier< F
)F G
;G H
	protected 
abstract 
bool  
IsValidMinimunLength  4
(4 5
string5 ;

identifier< F
)F G
;G H
} 
} Ç
Jd:\Repositories\WorkShopNet\src\WorkShopNet.App\ThrowExceptionValidator.cs
	namespace 	
WorkShopNet
 
. 
App 
{ 
public		 

class		 #
ThrowExceptionValidator		 (
:		) *
IValidateMethod		+ :
{

 
public 
List 
< 
string 
> 
Validate $
($ %
string% +

identifier, 6
)6 7
{ 	
List 
< 
string 
> 
	errorList "
=# $
new% (
(( )
)) *
;* +
try 
{ &
ValidNullOrEmptyIdentifier *
(* +

identifier+ 5
)5 6
;6 7
ValidMinimunLength "
(" #

identifier# -
)- .
;. /
ValidMaximunLength "
(" #

identifier# -
)- .
;. /%
ValidInitialCapitalLetter )
() *

identifier* 4
)4 5
;5 6
} 
catch 
( 
	Exception 
ex 
)  
{ 
	errorList 
. 
Add 
( 
ex  
.  !
Message! (
)( )
;) *
} 
return 
	errorList 
; 
} 	
	protected 
void &
ValidNullOrEmptyIdentifier 1
(1 2
string2 8

identifier9 C
)C D
{ 	
if   
(   
string   
.   
IsNullOrEmpty   $
(  $ %

identifier  % /
)  / 0
)  0 1
{!! 
throw"" 
new"" 
	Exception"" #
(""# $
ValidationMessages""$ 6
.""6 7&
NullOrEmptyIdentifierError""7 Q
)""Q R
;""R S
}## 
}$$ 	
	protected&& 
void&& %
ValidInitialCapitalLetter&& 0
(&&0 1
string&&1 7

identifier&&8 B
)&&B C
{'' 	
if(( 
((( 
!(( 
char(( 
.(( 
IsUpper(( 
((( 

identifier(( (
,((( )
$num((* +
)((+ ,
)((, -
{)) 
throw** 
new** 
	Exception** #
(**# $
ValidationMessages**$ 6
.**6 7%
InitialCapitalLetterError**7 P
)**P Q
;**Q R
}++ 
},, 	
	protected.. 
void.. 
ValidMaximunLength.. )
(..) *
string..* 0

identifier..1 ;
)..; <
{// 	
if00 
(00 

identifier00 
.00 
Length00 !
>00" #
ValidationConstants00$ 7
.007 8
	MaxLength008 A
)00A B
{11 
throw22 
new22 
	Exception22 #
(22# $
ValidationMessages22$ 6
.226 7
MaximumLengthError227 I
)22I J
;22J K
}33 
}44 	
	protected66 
void66 
ValidMinimunLength66 )
(66) *
string66* 0

identifier661 ;
)66; <
{77 	
if88 
(88 

identifier88 
.88 
Length88 !
<88" #
ValidationConstants88$ 7
.887 8
	MinLength888 A
)88A B
{99 
throw:: 
new:: 
	Exception:: #
(::# $
ValidationMessages::$ 6
.::6 7
MinimumLengthError::7 I
)::I J
;::J K
};; 
}<< 	
}== 
}>> €
Bd:\Repositories\WorkShopNet\src\WorkShopNet.App\ValidateMethods.cs
	namespace 	
WorkShopNet
 
. 
App 
{ 
public 

static 
class 
ValidateMethods '
{ 
private 
static 
IValidateMethod &

_validator' 1
;1 2
public

 
static

 
List

 
<

 
string

 !
>

! ""
ThrowExceptionValidate

# 9
(

9 :
string

: @

identifier

A K
)

K L
{ 	

_validator 
= 
new #
ThrowExceptionValidator 4
(4 5
)5 6
;6 7
return 

_validator 
. 
Validate &
(& '

identifier' 1
)1 2
;2 3
} 	
public 
static 
List 
< 
string !
>! "
IfStatementValidate# 6
(6 7
string7 =

identifier> H
)H I
{ 	

_validator 
= 
new  
IfStatementValidator 1
(1 2
)2 3
;3 4
return 

_validator 
. 
Validate &
(& '

identifier' 1
)1 2
;2 3
} 	
public 
static 
List 
< 
string !
>! "%
RegularExpressionValidate# <
(< =
string= C

identifierD N
)N O
{ 	

_validator 
= 
new &
RegularExpressionValidator 7
(7 8
)8 9
;9 :
return 

_validator 
. 
Validate &
(& '

identifier' 1
)1 2
;2 3
} 	
public 
static 
List 
< 
string !
>! "
PcreValidate# /
(/ 0
string0 6

identifier7 A
)A B
{   	

_validator!! 
=!! 
new!! 
PcreValidator!! *
(!!* +
)!!+ ,
;!!, -
return## 

_validator## 
.## 
Validate## &
(##& '

identifier##' 1
)##1 2
;##2 3
}$$ 	
}%% 
}&& ¶	
Fd:\Repositories\WorkShopNet\src\WorkShopNet.App\ValidationConstants.cs
	namespace 	
WorkShopNet
 
. 
App 
{ 
public 

static 
class 
ValidationConstants +
{ 
public 
const 
int 
Iterationlimit '
=( )
$num* 3
;3 4
public 
const 
int 
	MaxLength "
=# $
$num% '
;' (
public		 
const		 
int		 
	MinLength		 "
=		# $
$num		% &
;		& '
public 
const 
string 1
%InitialCapitalLetterRegularExpression A
=B C
$strD Y
;Y Z
public 
static 
readonly 
string %*
MaximumLengthRegularExpression& D
=E F
$strG \
;\ ]
public 
static 
readonly 
string %*
MinimumLengthRegularExpression& D
=E F
$strG X
;X Y
} 
} ı	
Ed:\Repositories\WorkShopNet\src\WorkShopNet.App\ValidationMessages.cs
	namespace 	
WorkShopNet
 
. 
App 
{ 
public 

static 
class 
ValidationMessages *
{ 
public 
static 
readonly 
string %%
InitialCapitalLetterError& ?
=@ A
$strB s
;s t
public 
static 
readonly 
string %
MaximumLengthError& 8
=9 :
$"; =
$str= ^
{^ _
ValidationConstants_ r
.r s
	MaxLengths |
}| }
$str	} à
"
à â
;
â ä
public 
static 
readonly 
string %
MinimumLengthError& 8
=9 :
$"; =
$str= Z
{Z [
ValidationConstants[ n
.n o
	MinLengtho x
}x y
$str	y é
"
é è
;
è ê
public 
static 
readonly 
string %&
NullOrEmptyIdentifierError& @
=A B
$strC m
;m n
}		 
}

 