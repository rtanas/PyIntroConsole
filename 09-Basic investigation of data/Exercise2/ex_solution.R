#get some help (if necessary)
#help(pd.to_datetime)

myData["TransDate"]  = pd.to_datetime(myData["TransDate"],format="%d.%m.%Y",utc=True)