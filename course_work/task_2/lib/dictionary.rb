# frozen_string_literal: true

class Dictionary
  class << self
    def open_dict(file)
      $stdin = File.open(file)
      dict_in_str = gets('$$')
      dict_in_str.split
    end

    def search(word, file, new_dict = [])
      dict = open_dict(file)
      found = nil
      dict.each do |word_in_dict|
        if word_in_dict == word
          found = true
          break
        elsif word_in_dict.index(word).zero?
          new_dict << word_in_dict
        end
      end
      search_result(found, word, new_dict)
    end

    def search_result(found, word, new_dict)
      if found
        word
      elsif new_dict.empty?
        'no elements'
      else
        new_dict
      end
    end
    private :open_dict, :search_result
  end
end
