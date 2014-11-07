class PigLatin
  def initialize phrase
    @phrase = phrase
  end

  def translate
    vowels = ["a",'e','i','o','u']
    punc = [",",".","?","!"]
    words = @phrase.split(" ")

    converted_word = []
    words.each do |word|
      is_word_cap = (word == word.capitalize)



      if punc.include?(word[-1])
        punctuation = word[-1]
        word = word[0..-2]
      else
        punctuation = ""  
      end
      # puts ">>>#{is_word_cap}<<<"

      while !vowels.include?(word[0])
        if !vowels.include?(word[0])
          if word[0..1].downcase == "qu"
            qu = word[0..1]
            word = word[2..-1] + qu
          else
            first_letter = word[0]
            word = word[1..-1] + first_letter
          end
        end
      end

      word.capitalize! if is_word_cap
      converted_word.push(word + "ay" + punctuation)
    end

    converted_word.join(" ")
  end
end
