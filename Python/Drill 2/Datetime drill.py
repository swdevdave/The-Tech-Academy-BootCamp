from datetime import datetime

now = datetime.now()
hr = (now.hour)
mn = (now.minute)



NYC = hr + 3

London = hr + 7



if NYC  >21:
    print ("NYC is Closed and is", NYC %12,"'O clock there")
else:
    print ("NYC is Open and is", NYC %12,"'O clock there")

if London > 21:
    print ("London is Closed and is", London %12,"'O clock there")
else:
    print ("London is Open and is", London %12,"'O clock there")


print ("Current time in Portland Oregon is", hr %12,":", mn )




