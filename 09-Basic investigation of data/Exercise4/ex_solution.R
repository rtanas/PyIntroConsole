#load pandas
import pandas as pd
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")
#get some help (if necessary)
#help(pd.to_datetime)

myData["TransDate"]  = pd.to_datetime(myData["TransDate"],format="%d.%m.%Y",utc=True)
myData.describe()
