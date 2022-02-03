# frozen_string_literal: true

class ArrayProcessing
  def self.arr_for_hash(arr_fst, arr_snd)
    result_arr = []
    arr_fst.size.times do |n|
      result_arr << [arr_fst[n], arr_snd[n]]
    end
    result_arr
  end
end
