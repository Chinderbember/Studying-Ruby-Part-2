# frozen_string_literal: true

require_relative 'lib/array_processing_class'

arr_fst = %i[first second third]
arr_snd = [*1..arr_fst.size]

puts ArrayProcessing.arr_for_hash(arr_fst, arr_snd).to_h
