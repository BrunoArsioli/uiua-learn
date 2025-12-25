# Determine if a year is a leap year
# IsLeapYear ? Year
#Leap ← multiply fork (mod 4 =0) ( ??? fork (mod 100 =0 =0) (mod 400 =0) ) 
#Leap ← multiply fork (mod 4 =0) ((≠0 +) fork (mod 100 =0 =0) (mod 400 =0) )
#Leap = multiply fork (mod 4 =0) ( multiply fork (mod 400 =0) (mod 100 =0))

# sign mod 4_100_400 : if there is a reminder, it will pick only the sign of it  
# we want: [0 1 1]_[0 0 0]
# we don't't want [0 0 1] 
# bit [0 1 1] is 6 ; and bit [0 0 0] is 0
# check if "un bin" of "sign mod 4_100_400" is either 6 or 0. use merberof
# in case "un bit sign mod 4_100_400" returns 6, 
# "memberof : [6 0] un bit sign mod 4_100_400" returns [1 0 ]
# and [0 1] for the other option. 
# so, we can sum the elements of "memberof : [6 0] un bit sign mod 4_100_400" return
# with "/+" , which will sum all the elements of the array. If it returns "1", it is a leap year. 
Leap = /+ memberof : [6 0] un bit sign mod 4_100_400


