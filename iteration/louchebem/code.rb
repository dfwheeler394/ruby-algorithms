# for constraints: create variables for vowels and french suffixes
VOWELS = ['a', 'e', 'i', 'o', 'u']
SUFFIXES = ['em', 'é', 'ji', 'oc', 'ic', 'uche', 'ès']

def vowel_in_word(letter)
  VOWELS.include? letter # returns true or false if letter is a vowel
end

def louchebemize(sentence)
  # don't translate single word sentences
  return sentence if sentence.size <= 1

  # create array of newly translated words
  translated_words = []
  words = sentence.split(/\b/)
  words.each do |word|
    word.match?(/\W/) ? translated_words << word : translated_words << louchebemize_word(word) # anything but words
  end
  translated_words.join
end

def louchebemize_word(word)
  if vowel_in_word(word[0]) # if word begins with a vowel
    "l#{word}#{SUFFIXES.sample}" # add l in front and a random suffix at end
  else # check if word begins with a consonant
    first_vowel_index = word.chars.index { |letter| vowel_in_word(letter) }

    beginning = word[0...first_vowel_index]
    ending = word[first_vowel_index...word.size]
    "l#{ending}#{beginning}#{SUFFIXES.sample}"
  end
end
