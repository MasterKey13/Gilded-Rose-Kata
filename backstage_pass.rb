class BackstagePass < Item

  def special()
    # adjust daily quality change based on remaining days
    if (@days_remaining <= 10)
      @quality_change = 2
    end
    
    if (@days_remaining <= 5) 
      @quality_change = 3
    end

    if (@days_remaining <= 0) 
      @quality = 0
      @quality_change = 0
    end
  end
end