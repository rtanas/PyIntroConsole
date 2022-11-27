#load pandas
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")
myData["TransDate"]  = pd.to_datetime(myData["TransDate"])

#plot
sns.lmplot("PurchAmount", "Cost", data=myData, fit_reg=False, hue="Quantity", palette="prism")
plt.plot()
