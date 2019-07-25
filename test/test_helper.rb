require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end
require 'Minitest/autorun'
require 'Minitest/pride'
require 'mocha/minitest'
require './lib/key'
require './lib/offset'
require 'pry'
