# Seeding HSK1 words

# require "csv"

# p "Creating words..."

# filepath = "db/hsk1-words.csv"

# CSV.foreach(filepath, headers: false) do |row|
#   word = Character.new(character: row[0], pinyin: row[1], translation: row[2], level: row[3])
#   word.save!
# end

# p "All done"



# Seeding Levels

# p "Creating Levels..."

# hsk1 = Level.new(level: "hsk1")
# hsk2 = Level.new(level: "hsk2")
# hsk3 = Level.new(level: "hsk3")
# hsk4 = Level.new(level: "hsk4")
# hsk5 = Level.new(level: "hsk5")
# hsk1.save!
# hsk2.save!
# hsk3.save!
# hsk4.save!
# hsk5.save!

# p "Levels created"



