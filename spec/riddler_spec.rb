require_relative '../app/lib/riddler.rb'

describe Riddler do

  subject(:riddler) { described_class.new }

  context "#fetch_question" do
    it "should return a riddle from data base" do
      expect(riddler.fetch_question).to eq "This thing all things devours, Birds, beasts, trees, and flowers. Gnaws iron bites steel, Grinds hard stones to meal, Slays king, ruins town, And beats high mountain down."
    end
  end
end
