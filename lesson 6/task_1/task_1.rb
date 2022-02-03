# frozen_string_literal: true

arr = %i[first second third]

def arr_for_hash(arr_fst, arr_snd)
	result_arr = []
	arr_fst.size.times do |n|
		result_arr << [arr_fst[n], arr_snd[n]]
	end
	result_arr
end

p arr_for_hash(arr, [*1..arr.size])
