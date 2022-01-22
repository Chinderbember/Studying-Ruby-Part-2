# frozen_string_literal: true

require_relative 'lib/chess_class'

figure_fst = Chess.new
figure_fst.assign_figure

puts "Is it Rook? - #{figure_fst.rook?}"
puts "Is it Pawn? - #{figure_fst.pawn?}"
