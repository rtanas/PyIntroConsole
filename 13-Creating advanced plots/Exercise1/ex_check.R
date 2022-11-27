Ex().check_function("seaborn.lmplot").multi(
  check_args("x").has_equal_value()
  check_args("y").has_equal_value()
  check_args("data").has_equal_value()
  check_args("fit_reg").has_equal_value()
)