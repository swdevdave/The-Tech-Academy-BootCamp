#   Date time Exercise
#   Autohor: Dave King
#   03/24/2016
#   Python 3.6





from datetime import datetime

now = datetime.now()
hr = (now.hour)
mn = (now.minute)



NYC = int(hr + 3)

TOD1 = NYC %24

if TOD1 >12:
    NTA = "PM"

if TOD1 <12:    
    NTA = "AM"



London = int(hr + 7)
TOD2 = London %24


if TOD2 <12:    
    NTB = "AM"

if TOD2 >12:
    NTB = "PM"

if hr <12:    
    NTC = "AM"

if hr >12:
    NTC = "PM"


if NYC  >21:
    print ("NYC is Closed and is", NYC %12, mn, NTA)
else:
    print ("NYC is Open and is", NYC %12, mn, NTA)

if London > 21:
    print ("London is Closed and is", London %12, mn, NTB)
else:
    print ("London is Open and is", London %12, mn, NTB)


print ("Current time in Portland Oregon is", hr %12, mn ,NTC )




