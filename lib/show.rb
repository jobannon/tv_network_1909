class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, character_array)
    @name = name
    @creator = creator
    @characters = character_array
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end
end
