class Bear

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
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
