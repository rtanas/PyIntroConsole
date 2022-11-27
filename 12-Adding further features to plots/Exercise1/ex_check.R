Ex().check_function("matplotlib.pyplot.subplot")
Ex().check_function("matplotlib.pyplot.hist").multi(
  check_args("x").has_equal_value()
)
Ex().check_function("matplotlib.pyplot.plot")