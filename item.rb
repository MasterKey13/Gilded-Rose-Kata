class Item
  attr_reader :name, :days_remaining, :quality, :quality_change, :days_remaining_change
  
  def initialize(name, days_remaining, quality, quality_change = -1, days_remaining_change = -1)
    @name = name
    @days_remaining = days_remaining
    @quality = quality

    @days_remaining_change = days_remaining_change
    @quality_change = quality_change
  end
  
  def tick() 
    self.special

    # perform the daily tick
    @days_remaining = @days_remaining + @days_remaining_change
    @quality = @quality + @quality_change

    self.validate
  end

  def special()
    # adjust quality change
    if (@days_remaining <= 0)
      @quality_change = -2
    end
  end

  def validate()
    # check bounds on quality
    if (@quality >= 50)
      @quality = 50
    end

    if (@quality <= 0)
      @quality = 0
    end
  end
end