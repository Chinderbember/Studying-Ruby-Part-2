# frozen_string_literal: true

# rubocop:disable Style/ClassVars
class List
  class << self
    def count
      @@count
    end

    def increase_count(number)
      @@count += number
    end
  end
  def initialize(*params)
    @@count = 1
    obj = self
    params.each do |element|
      class << obj
        attr_accessor("instance#{List.count}".to_sym)
      end
      obj.send("instance#{List.count}=".to_sym, element)
      List.increase_count(1)
    end
  end
end
# rubocop:enable Style/ClassVars
