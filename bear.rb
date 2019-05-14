class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(river)
    if river.fish_count != 0
      fish = river.remove
      @stomach.push(fish)
    end
  end

  def food_count
    return @stomach.length
  end

  def roar
    return "Roar....!"
  end

end
