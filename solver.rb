class Solver
def factorial(num)
    return 1 if [0, 1].include?(num)
    raise Exception, "You cannot calculate factorial of a negative number" if num.negative?

    num * factorial(num - 1)
  end
end