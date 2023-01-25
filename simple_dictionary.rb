word_list = {
                "Good Morning" => "Guten Morgen",
                "Guten Tag" => "Good Day",
                "Guten Abend" => "Good Evening",
                "Guten Nacht" => "Good Night",
                "Hallo" => "Hello",
                "Auf Wiedersehen" => "Goodbye",
                "Bitte" => "Please",
                "Danke" => "Thank you",
                "Entschuldigung" => "Excuse me",
                "Flugzeug" => "Airplane",
                "Hauptbahnhof" => "Main Station",
                "Liebe" => "Love",
                "Glück" => "Happiness",
                "Supermarkt" => "Supermarket",
                "Buchladen" => "Bookstore",
                "Bäckerei" => "Bakery",
                "Einkaufszentrum" => "Schopping Mall",
                "Krankenhaus" => "Hospital",
                "Kaffee" => "Coffee",
                "Bier" => "Beer",
                "Tee" => "Tea",
                "Wein" => "Wine",
                "Wasser" => "Water",
                "Hähnchen" => "Chicken"
            }

# Get german word to translate from the hash
def get_word(word_list)
    word_list.keys
end


# Get translated word in english based on given hash and key
def get_translation(word_list, key)
    word_list[key]
end


puts "German Dictionary"
17.times { print "-"}
puts
puts
# Execution flow
loop do
    # Write your program execution code here
    puts "Do you want to translate a German word to English. (Y / N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "You can have the translation of the following words;"
    puts get_word(word_list)
    puts "Insert a word from the list above to get it's translation in English."
    prompt = gets.chomp
    if word_list.include?(prompt)
        puts "The english word for '#{prompt}' is #{get_translation(word_list, prompt)}."
    else
        puts "I am just a simle translator and this word is not from the list of words I know."
        puts "I cannot translate if for now. Please try again from the list."
    end
end
