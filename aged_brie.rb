class AgedBrie < Item

  def special()
    # adjust quality change
    if (@days_remaining <= 0)
      @quality_change = 2
    end
  end
end