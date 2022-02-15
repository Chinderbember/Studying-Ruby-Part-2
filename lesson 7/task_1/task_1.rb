# frozen_strinf_literal: true

class Integer
	BYTES_IN_KILOBYTES = 1024
	BYTES_IN_MEGABYTES = BYTES_IN_KILOBYTES * 1024
	BYTES_IN_GIGABYTES = BYTES_IN_MEGABYTES * 1024
	BYTES_IN_TERABYTES = BYTES_IN_GIGABYTES * 1024

	def kilobytes
		self * BYTES_IN_KILOBYTES
	end

	def megabytes
		self * BYTES_IN_MEGABYTES
	end

	def gigabytes
		self * BYTES_IN_GIGABYTES
	end

	def terabytes
		self * BYTES_IN_TERABYTES
	end
end

puts 5.kilobytes
puts 5.megabytes
puts 5.gigabytes
puts 5.terabytes

