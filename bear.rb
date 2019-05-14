class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(river)
    fish = river.remove
    @stomach.push(fish)
  end

  def food_count
    return @stomach.length
  end

  def roar
    return "Roar....!"
  end

end
