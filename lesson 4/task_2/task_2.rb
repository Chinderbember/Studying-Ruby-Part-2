# frozen_string_literal: true

class Chess
  FIGURES = %w[King Queen Elephant Rook Horse Pawn].freeze

  def assign_figure
    loop do
      print 'Enter name of figure: '
      input = gets.chomp.capitalize
      if FIGURES.include?(input)
        @figure = input
        break
      else
        puts 'Wrong figure name'
      end
    end
  end

  attr_reader :figure

  def king?
    @figure == 'King'
  end

  def queen?
    @figure == 'Queen'
  end

  def elephant?
    @figure == 'Elephant'
  end

  def rook?
    @figure == 'Rook'
  end

  def horse?
    @figure == 'Horse'
  end

  def pawn?
    @figure == 'Pawn'
  end
end

figure_fst = Chess.new
figure_fst.assign_figure

puts "Is it Rook? - #{figure_fst.rook?}"
puts "Is it Pawn? - #{figure_fst.pawn?}"
