require_relative '../app/lib/riddler.rb'

describe Riddler do

  subject(:riddler) { described_class.new }

  context "#fetch_question" do
    it "should return a riddle from data base" do
      expect(riddler.fetch_question).to include "This thing all things devours:"
    end
  end
end
