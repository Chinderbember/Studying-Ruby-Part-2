# frozen_string_literal: true

require_relative 'lib/classes'

obj_fst = Testclass.new(OperationKitFst)
puts obj_fst.method_fst + ' - OperationKitFst'
puts obj_fst.method_snd + ' - OperationKitFst'