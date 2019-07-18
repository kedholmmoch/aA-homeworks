require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("tiramisu", 1000, "emeril") }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("tiramisu")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(1000)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("lava cake", "500", "Rachael Ray")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("lady fingers")
      expect(dessert.ingredients).to include("lady fingers")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("mascarpone")
      dessert.add_ingredient("cocoa")
      dessert.add_ingredient("kahlua")
      unmixed = dessert.ingredients[0..-1]
      mixed = dessert.mix!
      expect(mixed).to_not eq(unmixed)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(200)
      expect(dessert.quantity).to eq(800)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(1500) }.to raise_error
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include("Emeril")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
    end
  end
end
