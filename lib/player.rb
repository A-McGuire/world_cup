class Player
  attr_reader :name_position
  
  def initialize(name_position)
    @name_position = name_position
  end

  def name
    name_position[:name]
  end

  def position
    name_position[:position]
  end
end
