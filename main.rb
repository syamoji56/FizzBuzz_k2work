# frozen_string_literal: true

require './lib/fizz_buzz.rb'

p 'タイプを入力してください'
input = gets
p input
puts FizzBuzz.generate_list(input.chomp!)
