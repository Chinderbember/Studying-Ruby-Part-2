class Array_processing
	def self.arr_for_hash(arr_fst, arr_snd)
		result_arr = []
		arr_fst.size.times do |n|
			result_arr << [arr_fst[n], arr_snd[n]]
		end
		result_arr
  end
end