require "csv"

p "Creating words..."

filepath = "db/hsk1-words.csv"

CSV.foreach(filepath, headers: false) do |row|
  word = Character.new(character: row[0], pinyin: row[1], translation: row[2], level: row[3])
  word.save!
end

p "All done"
