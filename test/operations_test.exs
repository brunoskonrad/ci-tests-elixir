defmodule OperationsSpec do
  use Pavlov.Case, async: true
  import Pavlov.Syntax.Expect

  context "#sum" do
    it "sums two numbers" do
      expect Operations.sum(2, 3) |> to_eq 5
    end
  end

  context "#sub" do
    it "substracts a number" do
      expect Operations.sub(10, 7) |> to_eq 3
    end
  end

  context "#mult" do
    it "multiply two numbers" do
      expect Operations.mult(3, 6) |> to_eq 18
    end

    context "when multiply by zero" do
      it "always returns zero" do
        expect Operations.mult(3, 0) |> to_eq 0
        expect Operations.mult(10, 0) |> to_eq 0
        expect Operations.mult(0, 6) |> to_eq 0
      end
    end
  end

  context "#div" do
    it "divides a number" do
      expect Operations.div(6, 3) |> to_eq 2
    end

    context "when divide zero by another number" do
      it "always returns zero" do
        expect Operations.div(0, 6) |> to_eq 0
      end
    end

    context "when divide by zero" do
      it "throws an error" do
        assert_raise ArgumentError, "can't divide by zero", fn ->
          Operations.div(5, 0)
        end
      end
    end
  end
end
