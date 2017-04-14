class Sulfuras < Item

  def special()
    
  end

  def validate()
    # check bounds on quality
    if (@quality >= 80)
      @quality = 80
    end

    if (@quality <= 0)
      @quality = 0
    end
  end
end