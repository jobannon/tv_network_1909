require 'pry'

class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    #this is not clean code ...
    @shows.each do |show|
      show.characters.reduce([]) do |result, character|
          binding.pry
          if character.first.salary > result.first.salary || result == []
            result << character
          else
            result << result
          end
      end
    end
  end

end
