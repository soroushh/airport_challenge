class Airport
  attr_reader :planes, :capacity

  def initialize(capacity = 1)
    @capacity = capacity
    @planes = []
  end

  def add_plane(plane)
    planes << plane
  end

  def delete_plane(plane)
    planes.delete(plane)
  end

  def weather_conditions()
    rand(2)==0?"stormy":"sunny"
  end

  def bad_weather_error
    if weather_conditions == "stormy"
      raise "The weather is stormy"
    end
  end

  def is_full?
    @planes.size ==@capacity? true:false
  end

  def airport_full
    if is_full?
      raise "The airport is full."
    end
  end

end
