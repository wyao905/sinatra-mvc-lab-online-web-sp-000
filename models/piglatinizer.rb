class PigLatinizer
  attr_accessor :text
  
  def initialize
    @text = @input
  end
  
  def piglatinize(text)
    words = text.split(" ")
    words.map! do |word|
      if word.start_with?('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
        word << "way"
      else
        consonant = []
        consonant << word[0]
        i = 1
        b = false
        while b == false do
          if ['a', 'e', 'i', 'o', 'u'].include?(word[i]) == false
            consonant << word[i]
            i += 1
            b = false
          else
            b = true
          end
        end
        arr = word.split("")
        consonant.each do |a|
          arr.shift
          arr << a
        end
        new_word = arr.join("")
        new_word << "ay"
      end
    end
    words.join(" ")
  end
end