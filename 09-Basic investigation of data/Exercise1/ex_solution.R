#load pandas
import pandas as pd
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")
myData
myData.head(n=3)
myData.tail(n=3)
myData.describe()
myData.dtypes