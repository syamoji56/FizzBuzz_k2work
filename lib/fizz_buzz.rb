# frozen_string_literal: true

# need comment for rubocop's don't detected
class FizzBuzz
  MAX_NUMBER = 100

  def self.generate(number, type)
    if type == 1
      is_fizz = number.modulo(3).zero?
      is_buzz = number.modulo(5).zero?

      return 'FizzBuzz' if is_fizz && is_buzz
      return 'Fizz' if is_fizz
      return 'Buzz' if is_buzz

      number.to_s

    elsif type == 2
      number.to_s

    else
      is_fizz = number.modulo(3).zero?
      is_buzz = number.modulo(5).zero?

      return 'FizzBuzz' if is_fizz && is_buzz

      number.to_s
    end
  end

  def self.generate_list(type)
    # 1から最大値までのFizzBuzz配列を１発で作る
    (1..MAX_NUMBER).map { |n| generate(n, type) }
  end
end
