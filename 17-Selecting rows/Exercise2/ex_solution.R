myData.loc[(myData["TransDate"]>pd.to_datetime("2009-12-31")) & (myData["TransDate"]<=pd.to_datetime("2010-12-31")), ]
