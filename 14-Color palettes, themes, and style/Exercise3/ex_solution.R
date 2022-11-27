#load pandas
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")
myData["TransDate"]  = pd.to_datetime(myData["TransDate"])

#plot
sns.lmplot(x="PurchAmount", y="Cost", data=myData, fit_reg=False)
plt.title("Customers' Purchase Amounts versus Product Costs")
plt.xlabel("Purchase Amount", size=10,fontweight='bold')
plt.ylabel("Costs", size=10,fontweight='bold')
plt.xlim(0,6000)
plt.ylim(0,3500)
plt.show()
