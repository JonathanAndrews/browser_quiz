require 'pg'
def setup_test_database
  p 'Setting up test database...'

  connection = PG.connect(dbname: 'browser_quiz_riddler_test')

  connection.exec("TRUNCATE riddles;")
end
