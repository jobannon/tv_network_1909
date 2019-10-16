require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def test_it_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_initializes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    # => #<Character:0x00007f98a4ba8dc8...>

    assert_equal "KITT", kitt.name
    # => "KITT"

    assert_equal "William Daniels", kitt.actor
    # => "William Daniels"

    assert_equal 1000000, kitt.salary
    # => 1000000
  end
end
