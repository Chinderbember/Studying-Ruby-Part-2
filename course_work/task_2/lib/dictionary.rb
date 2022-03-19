# frozen_string_literal: true

class Dictionary
  class << self
    def open_dict(file)
      $stdin = File.open(file)
      dict_in_str = gets("$$") 
      dict_in_str.split
    end

    def search(word, file)
      dict = open_dict(file)
      new_dict = []

      found = nil
      dict.each do |word_in_dict|
        if word_in_dict == word
          found = true
          break
        elsif word_in_dict.index(word) == 0
          new_dict << word_in_dict
        end
      end

      if found
        word
      elsif new_dict.empty? 
        'no elements'
      else 
        new_dict
      end

    end
  end
end


