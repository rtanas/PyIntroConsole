#load pandas
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")
myData["TransDate"]  = pd.to_datetime(myData["TransDate"])

#plot
sns.set_style("dark")
sns.lmplot(x="PurchAmount", y="Cost", data=myData, fit_reg=True, scatter_kws={"s": 150, "color": "green"})
plt.title("Costs by Purchase Amount")
plt.xlabel("Purchase Amount")
plt.ylabel("Cost")
plt.show()