Ex().check_or(  
  check_function('myData.head'),
  check_function('myData.tail'),
  check_function('myData.describe'),
  has_code('myData.dtypes'),
  has_code('myData')
)