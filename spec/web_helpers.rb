def insert_riddle_to_database
  connection = PG.connect(dbname: 'browser_quiz_riddler_test')
  id = "1"
  riddle = "'This thing all things devours;
  Birds, beasts, trees, flowers;
  Gnaws iron, bites steel;
  Grinds hard stones to meal;
  Slays king, ruins town,
  And beats mountain down.'"
  answer = "'Time'"

  connection.exec("INSERT INTO riddles VALUES (" + id + ", " + riddle + ", " + answer + ");")
end
