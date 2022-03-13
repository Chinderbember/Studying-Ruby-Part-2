# frozen_string_literal: true

require_relative 'lib/classes'

obj_fst = Testclass.new(OperationKitFst)
puts "#{obj_fst.method_fst} - OperationKitFst"
puts "#{obj_fst.method_snd} - OperationKitFst"

puts

obj_snd = Testclass.new(OperationKitSnd)
puts "#{obj_snd.method_fst} - OperationKitSnd"
puts "#{obj_snd.method_snd} - OperationKitSnd"
