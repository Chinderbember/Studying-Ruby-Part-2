# frozen_string_literal: true

class OperationKit
  def method_fst
    raise 'Вызван метод из класса-родителя'
  end

  def method_snd
    raise 'Вызван метод из класса-родителя'
  end
end

class OperationKitFst < OperationKit
  def method_fst
    'variant 1 of method_fst'
  end

  def method_snd
    'variant 1 of method_snd'
  end
end

class OperationKitSnd < OperationKit
  def method_fst
    'variant 2 of method_fst'
  end

  def method_snd
    'variant 2 of method_snd'
  end
end

class Testclass
  attr_accessor :operation_kit

  def initialize(operation_kit)
    @operation_kit = operation_kit.new
  end

  def method_fst
    @operation_kit.method_fst
  end

  def method_snd
    @operation_kit.method_snd
  end

end
