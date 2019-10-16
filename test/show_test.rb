require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/character'

class ShowTest < Minitest::Test

  def test_it_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    # => #<Character:0x00007f98a4ba8dc8...>

    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    # => #<Character:0x00007f8327213de0...>

    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    # => #<Show:0x00007f83280b3288...>
    assert_instance_of Show, knight_rider
  end

  def test_it_initializes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    # => #<Character:0x00007f98a4ba8dc8...>

    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    # => #<Character:0x00007f8327213de0...>

    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    # => #<Show:0x00007f83280b3288...>

    assert_equal "Knight Rider", knight_rider.name
    # => "Knight Rider"

    assert_equal "Glen Larson", knight_rider.creator
    # => "Glen Larson"

    assert_equal [michael_knight, kitt], knight_rider.characters
    # => [#<Character:0x00007f8327213de0...>, #<Character:0x00007f8326ab57d8...>]
  end

  def test_it_can_return_salary
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    # => #<Character:0x00007f98a4ba8dc8...>

    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    # => #<Character:0x00007f8327213de0...>

    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    knight_rider.total_salary
    # => 2600000
  end
end
