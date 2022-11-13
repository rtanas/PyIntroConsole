Ex().check_function("pandas.to_datetime").multi(
  check_args('arg').has_equal_value(),
  check_args('format').has_equal_value(),
  check_args("utc").has_equal_value()
)