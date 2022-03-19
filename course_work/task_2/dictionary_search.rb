# frozen_string_literal: true

require_relative 'lib/calendar'

dict = %w[котопёс котяра котофей компьютер компьютерный компьютеризация]
new_dict = []
found = nil
dict.each do |word|
	if word == ARGV[0]
			found = true
			break
	elsif word.index(ARGV[0]) == 0
		new_dict << word
	end
end

if found
	puts ARGV[0]
elsif new_dict.empty? 
	puts 'no elements'
else 
	p new_dict
end

