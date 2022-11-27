Ex().check_function("seaborn.lmplot").multi(
  check_args("x").has_equal_value()
  check_args("y").has_equal_value()
  check_args("data").has_equal_value()
  check_args("hue").has_equal_value()
  check_args("palette").has_equal_value()
)