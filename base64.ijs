NB. convert/misc/base64
NB. convert to/from base64 representations
NB. version: 1.0.0
NB.
NB. main functions:
NB.   tobase64         to base64 representation
NB.   frombase64       from base64 representation

BASE64=: (a.{~ ,(a.i.'Aa') +/i.26),'0123456789+/'

NB. =========================================================
tobase64=: 3 : 0
res=. BASE64 {~ #. _6 [\ , (8#2) #: a. i. y
res, (0 2 1 i. 3 | # y) # '='
)

NB. =========================================================
frombase64=: 3 : 0
pad=. _2 >. (y i. '=') - #y
pad }. a. {~ #. _8 [\ , (6#2) #: BASE64 i. y
)

NB. =========================================================
NB. A=: '1';'12';'123';'1234';'12345';'123456';'hi there';'qwerty'
NB. (-: frombase64@tobase64) &> ,each A
