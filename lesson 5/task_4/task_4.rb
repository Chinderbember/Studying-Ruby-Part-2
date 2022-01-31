# frozen_string_literal: true

require_relative 'lib/class_foo'

hash = {
  say_hello: 'Hello',
  say_ruby: 'Ruby'
}

obj = Foo.new(hash)

puts obj.say_hello
puts obj.say_ruby
