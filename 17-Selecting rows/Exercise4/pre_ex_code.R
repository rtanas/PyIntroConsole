#%% Import relevant modules
import pandas as pd
# Read in data
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv", nrows=100)
#change date format
myData["TransDate"]  = pd.to_datetime(myData["TransDate"])