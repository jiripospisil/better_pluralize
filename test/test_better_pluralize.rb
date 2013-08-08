require "minitest/autorun"
require "rails"

require "action_view/buffers"
require "action_view/helpers/capture_helper"
require "better_pluralize/helpers"

class TestBetterPluralize < MiniTest::Unit::TestCase
  attr_accessor :output_buffer

  include ActionView::Helpers::CaptureHelper
  include ActionView::Helpers::TextHelper

  def test_backwards_compatibility
    text_0 = pluralize nil, "person"
    assert_equal "0 people", text_0

    text_1 = pluralize 0, "person"
    assert_equal "0 people", text_1

    text_2 = pluralize 1, "person"
    assert_equal "1 person", text_2

    text_3 = pluralize 2, "person"
    assert_equal "2 people", text_3

    text_4 = pluralize 2, "person", "users"
    assert_equal "2 users", text_4
  end

  def test_passing_blocks
    text_0 = pluralize 1, "person", "users" do |count, word|
      "From block: #{count} #{word}"
    end
    assert_equal "From block: 1 person", text_0

    text_1 = pluralize 2, "person", "users" do |count, word|
      "From block: #{count} #{word}"
    end
    assert_equal "From block: 2 users", text_1
  end
end
