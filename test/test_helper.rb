require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end
require 'Minitest/autorun'
require 'Minitest/pride'
require 'mocha/minitest'
require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/enigma'
require './lib/message'
require './lib/cipher'
require './modules/random_five'
require './modules/six_digit_date'
require 'pry'
