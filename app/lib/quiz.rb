require_relative 'riddler'

class Quiz

  attr_reader :question_source

  def initialize(question_source = Riddler.new)
    @question_source = question_source
  end

  def fetch_question
    question_source.fetch_question
  end
end
