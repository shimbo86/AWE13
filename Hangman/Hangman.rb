def paint(error_count)
   case error_count
      when 0
         puts "             "
         puts "             "
         puts "             "
         puts "             "
         puts "             "
         puts "-+-          "
         puts "Errors: 0/6  "
         puts "------------------------------"
      when 1
         puts " +           "
         puts " |           "
         puts " |           "
         puts " |           "
         puts " |           "
         puts "-+-          "
         puts "Errors: 1/6  "
         puts "------------------------------"
      when 2
         puts " +------     "
         puts " |           "
         puts " |           "
         puts " |           "
         puts " |           "
         puts "-+-          "
         puts "Errors: 2/6  "
         puts "------------------------------"
      when 3
         puts " +------o    "
         puts " |      !    "
         puts " |           "
         puts " |           "
         puts " |           "
         puts "-+-          "
         puts "Errors: 3/6  "
         puts "------------------------------"
      when 4
         puts " +------o    "
         puts " |      !    "
         puts " |           "
         puts " |           "
         puts " |           "
         puts "-+-   TTTTT  "
         puts "Errors: 4/6  "
         puts "------------------------------"
      when 5
         puts " +------o    "
         puts " |      !    "
         puts " |      O    "
         puts " |     /|\\  "
         puts " |     / \\  "
         puts "-+-   TTTTT  "
         puts "Errors: 5/6  "
         puts "------------------------------"
      when 6
         puts " +------o    "
         puts " |      |    "
         puts " |     \\O/  "
         puts " | LOST |    "
         puts " |     / \\  "
         puts "-+-          "
         puts "Errors: 6/6  "
         puts "------------------------------"
   end
end

printf "============HANGMAN============\nENTER A WORD: "
word = gets.upcase.chomp
word_encrypted = word.gsub(/[A-Z]/,"*")
50.times do puts " " end
errors=0
while errors < 6  do
   printf "Guess the word : " + word_encrypted + "\nEnter a character: "
   character = gets.upcase.chomp
   character_found = false
   (0...word.length).each{|i| word[i]== character ? (word_encrypted[i] = character and character_found = true):nil}
   word_encrypted.count("*")==0 ? (puts("!!!! WORD FOUND : " + word + " !!!!") or break):(character_found ? puts("!! CHARACTER FOUND !!") : errors+=1)
   paint(errors)
end