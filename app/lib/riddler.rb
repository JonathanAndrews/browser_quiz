require 'pg'

class Riddler

  def fetch_question
    if ENV['ENVIRONMENT'] == "test"
      connection = PG.connect dbname: 'browser_quiz_riddler_test'
    else
      connection = PG.connect dbname: 'browser_quiz_riddler'
    end

    table = connection.exec("SELECT * FROM riddles ORDER BY RANDOM() LIMIT 1;")

    table[0]
  end
end
