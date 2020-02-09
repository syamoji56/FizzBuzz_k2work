# frozen_string_literal: true

require 'simplecov'
SimpleCov.start
require 'minitest/reporters'
Minitest::Reporters.use!
require 'minitest/autorun'
require './lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  describe 'FizzBuzz' do
    def setup
      @fizzbuzz = FizzBuzz
    end

    describe 'タイプ１の場合' do
      describe '３の倍数の場合' do
        def test_3を渡したら文字列Fizzを返す
          assert_equal 'Fizz', @fizzbuzz.generate(3, 1)
        end
      end

      describe '５の倍数の場合' do
        def test_5を渡したら文字列Buzzを返す
          assert_equal 'Buzz', @fizzbuzz.generate(5, 1)
        end
      end

      describe '３と５の倍数の場合' do
        def test_15を渡したら文字列FizzBuzzを返す
          assert_equal 'FizzBuzz', @fizzbuzz.generate(15, 1)
        end
      end

      describe 'その他の場合' do
        def test_1を渡したら文字列1を返す
          assert_equal '1', FizzBuzz.generate(1, 1)
        end

        def test_2を渡したら文字列2を返す
          assert_equal '2', FizzBuzz.generate(2, 1)
        end
      end
    end

    describe 'タイプ2の場合' do
 
      describe 'その他の場合' do
        def test_1を渡したら文字列1を返す
          assert_equal '1', FizzBuzz.generate(1, 2)
        end

        def test_2を渡したら文字列2を返す
          assert_equal '2', FizzBuzz.generate(2, 2)
        end
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
