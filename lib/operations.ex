defmodule Operations do
  def sum(a, b) do
    a + b
  end

  def sub(a, b) do
    a - b
  end

  def mult(a, b) do
    a * b
  end

  def mult(0, b) do
    0
  end

  def mult(a, 0) do
    0
  end

  def div(0, b) do
    0
  end

  def div(a, 0) do
    raise ArgumentError, message: "can't divide by zero"
  end

  def div(a, b) do
    a / b
  end
end
