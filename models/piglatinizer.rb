require 'pry'
class PigLatinizer
    attr_accessor :piglatinized_phrase
  
  def piglatinized(word)
    
    
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      vowel_index = word.index(/[aeiou]/)
      front_end = word.slice!(0..vowel_index-1)
      word + front_end +"ay"
    end
  end
  
  def piglatinize(text)
    words = text.split(" ")
    words.map! {|word| piglatinized(word)}
    words.join(" ")
  end
  end 