# frozen_string_literal: true

require_relative 'lib/class_settings'

first = Settings.instance
p first
second = Settings.instance
p second

first[:fst] = 1
first[:snd] = 2

p first[:fst]
p second[:fst]

p first[:snd]
p second[:snd]

# rubocop:disable Lint/UselessAssignment
third = Settings.new
# rubocop:enable Lint/UselessAssignment
