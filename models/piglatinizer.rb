class PigLatinizer

  def piglatinize(string)
    string.split(" ").map { |word| piglatinize_word(word) }.join(" ")    
  end

  def vowel?(char)
    char.match?(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    
    if vowel?(word[0])
      "#{word}way"
    else
      consonants = []
      consonants << word[0]
      if !vowel?(word[1])
        consonants << word[1]
        if !vowel?(word[2])
          consonants << word[2]
        end
      end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end    
  end

end