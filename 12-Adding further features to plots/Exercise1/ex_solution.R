myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")
```

```{python ex="create_a", type="solution"}
#load pandas
import pandas as pd
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")
#get some help (if necessary)
#help(pd.to_datetime)

plt.subplot(1,2,1) 
plt.hist(myData["PurchAmount"], color="green")
plt.title("Hist PurchAmount")
plt.subplot(1,2,2)
plt.plot(myData["PurchAmount"],myData["Quantity"], "o")
plt.title("Quantity by PurchAmount")
plt.show()