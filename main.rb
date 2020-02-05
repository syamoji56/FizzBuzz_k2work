# frozen_string_literal: true

require 'minitest/reporters'
Minitest::Reporters.use!
require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
  describe 'FizzBuzz' do
    def setup
      @fizzbuzz = FizzBuzz
    end

    describe '３の倍数の場合' do
      def test_3を渡したら文字列Fizzを返す
        assert_equal 'Fizz', @fizzbuzz.generate(3)
      end
    end

    describe '５の倍数の場合' do
      def test_5を渡したら文字列Buzzを返す
        assert_equal 'Buzz', @fizzbuzz.generate(5)
      end
    end

    describe '３と５の倍数の場合' do
      def test_15を渡したら文字列FizzBuzzを返す
        assert_equal 'FizzBuzz', @fizzbuzz.generate(15)
      end
    end

    describe 'その他の場合' do
      def test_1を渡したら文字列1を返す
        assert_equal '1', FizzBuzz.generate(1)
      end

      def test_2を渡したら文字列2を返す
        assert_equal '2', FizzBuzz.generate(2)
      end
    end

    describe '1から１００までの数の配列を返す' do
      def setup
        @result = FizzBuzz.generate_list
      end

      def test_配列の初めは文字列の1を返す
        assert_equal '1', @result.first
      end

      def test_配列の最後は文字列のBuzzを返す
        assert_equal 'Buzz', @result.last
      end

      def test_配列の２番目は文字列のFizzを返す
        assert_equal 'Fizz', @result[2]
      end

      def test_配列の４番目は文字列のBuzzを返す
        assert_equal 'Buzz', @result[4]
      end

      def test_配列の１４番目は文字列のFizzBuzzを返す
        assert_equal 'FizzBuzz', @result[14]
      end
    end
  end
end

class FizzBuzz
  MAX_NUMBER=100
  def self.generate(number)
    is_fizz = number.modulo(3).zero?
    is_buzz = number.modulo(5).zero?

    return 'FizzBuzz' if is_fizz && is_buzz
    return 'Fizz' if is_fizz
    return 'Buzz' if is_buzz

    number.to_s
  end

  def self.generate_list
    #１から最大値までのFizzBuzz配列を１発で作る
    (1..MAX_NUMBER).map { |n| generate(n) }
  end
end
