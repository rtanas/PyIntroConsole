#load pandas
import pandas as pd
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")

import matplotlib.pyplot as plt
plt.boxplot(x=myData["PurchAmount"])
plt.show()