#load pandas
import pandas as pd
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")

import matplotlib.pyplot as plt
plt.scatter(x=myData["Quantity"], y=myData["PurchAmount"])
plt.show()