require './lib/network'
require './lib/show'
require './lib/character'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest'

class NetworkTest < Minitest::Test
  def test_it_exits
    nbc = Network.new("NBC")
    assert_instance_of Network, nbc
  end

  def test_it_initalizes
    nbc = Network.new("NBC")
    # => #<Network:0x00007fe5f83ea3b0...>

    assert_equal "NBC", nbc.name
    assert_equal [], nbc.shows
  end

  def test_it_can_add_shows
    nbc = Network.new("NBC")

    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    # => #<Character:0x00007fe5f88721f8...>

    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    # => #<Character:0x00007fe5f8448f78...>

    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    # => #<Show:0x00007fe5f8398970...>

    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    # => #<Character:0x00007fe5f832bb18...>

    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    # => #<Character:0x00007fe5f8172a60...>

    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    # => #<Show:0x00007fe5f88b0a20...>

    nbc.add_show(knight_rider)
    nbc.add_show(parks_and_rec)

    assert_equal [knight_rider, parks_and_rec], nbc.shows
  end
  def test_it_can_calc_highest_paid_actor
    nbc = Network.new("NBC")

    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    # => #<Character:0x00007fe5f88721f8...>

    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    # => #<Character:0x00007fe5f8448f78...>

    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    # => #<Show:0x00007fe5f8398970...>

    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    # => #<Character:0x00007fe5f832bb18...>

    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    # => #<Character:0x00007fe5f8172a60...>

    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    # => #<Show:0x00007fe5f88b0a20...>

    nbc.add_show(knight_rider)
    nbc.add_show(parks_and_rec)

    assert_equal "Amy Poehler", nbc.highest_paid_actor
  end
end
