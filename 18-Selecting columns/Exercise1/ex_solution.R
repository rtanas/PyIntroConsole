#%% Import relevant modules
import pandas as pd
import numpy as np
# Read in data
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")

myData.iloc[0:100, ]
