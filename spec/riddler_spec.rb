require_relative '../app/lib/riddler.rb'

describe Riddler do

  subject(:riddler) { described_class.new }

  context "#fetch_question" do
    it "should return a riddle from data base" do

      insert_riddle_to_database

      expect(riddler.fetch_question).to eq ({"answer"=>"Time", "id"=>"1", "riddle" => "This thing all things devours;\n  Birds, beasts, trees, flowers;\n  Gnaws iron, bites steel;\n  Grinds hard stones to meal;\n  Slays king, ruins town,\n  And beats mountain down."})
    end
  end
end
