Ex().check_function("matplotlib.pyplot.scatter").multi(
  check_args('x').has_equal_value(),
  check_args('y').has_equal_value()
)