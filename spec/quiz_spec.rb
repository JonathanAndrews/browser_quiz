require_relative '../app/lib/quiz'

describe Quiz do

  let(:riddler) { double :Riddler, fetch_question: "This thing all things devours:" }
  subject(:quiz) { described_class.new(riddler) }

  context "#fetch_question" do
    it "should return a riddle" do
      expect(quiz.fetch_question).to eq("This thing all things devours:")
    end
  end
end
