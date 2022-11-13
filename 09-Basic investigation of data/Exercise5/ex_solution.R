#load pandas
import pandas as pd
myData=pd.read_csv("https://raw.githubusercontent.com/bachmannpatrick/Python-Class/master/data/transactions.csv")
myData.to_csv(path_or_buf="transactions_students_backup.csv")