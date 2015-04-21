class Bike
  def initialize
    @working = true
    
  end
  def working?
    @working
  end

  def break!
    @working = false
  end

  def fix!
    raise ('Already working') if working?
    @working = true
  end
end