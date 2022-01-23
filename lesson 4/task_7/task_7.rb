# frozen_string_literal: true

class Substance
  def assign_status(input)
    case input
    when :solid
      @status = :solid
    when :liquid
      @status = :liquid
    when :gaz
      @status = :gaz
    end
  end

  def melt
    @status = :liquid if @status == :solid
  end

  def freeze
    @status = :solid if @status == :liquid
  end

  def boil
    @status = :gaz if @status == :liquid
  end

  def condense
    @status = :liquid if @status == :gaz
  end

  def sublime
    @status = :gaz if @status == :solid
  end

  def deposit
    @status = :solid if @status == :gaz
  end

  attr_reader :status
end
