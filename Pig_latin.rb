
def get_input
  puts "Give me a phrase to piglatin-ize!"
  words = gets.chomp
  return words
end

def split_input_words
  words = get_input
  list_of_input_words = words.split(/\W+/)
  return list_of_input_words
end

def pig_latin
  phrase_broken_down = []
  list_of_input_words = split_input_words
  list_of_input_words.each {|word|
    first_letter = word.slice!(0)
    translated = word + first_letter + "ay"
    phrase_broken_down.push(translated)
  }
  return phrase_broken_down
end

def return_output_to_user
  translated_sentence = pig_latin
  p "Here's your phrase translated to Pig Latin: #{translated_sentence.join(" ").strip} "
end
return_output_to_user
