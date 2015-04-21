class DockingStation
  
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(options ={})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def has_bikes?
    !@bikes.empty?
  end

  def available_bikes
    @bikes.select(&:working?)
  end

  def dock(bike)
    raise "Docking station is full" if full?
    raise "You can only dock bikes" unless bike.respond_to? :working?
    @bikes << bike
  end

  def release(bike)
    @bikes.delete(bike)
  end

  def full?
    @bikes.count == capacity
  end

end