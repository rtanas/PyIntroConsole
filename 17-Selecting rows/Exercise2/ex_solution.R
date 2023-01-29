#change date format
myData["TransDate"]  = pd.to_datetime(myData["TransDate"])
#Select all purchases from 2010
myData.loc[(myData["TransDate"]>pd.to_datetime("2009-12-31")) & (myData["TransDate"]<=pd.to_datetime("2010-12-31")), ]
