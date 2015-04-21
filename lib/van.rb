class Van

  attr_reader :bikes

  DEFAULT_CAPACITY = 10

  def initialize (options = {})
  @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  @bikes = []
  end

  def capacity
    @capacity
  end

  def load(bike)
    bikes << bike
  end

  def release(bike)
    bikes.delete(bike)
  end

  def bikes
    @bikes
  end

end