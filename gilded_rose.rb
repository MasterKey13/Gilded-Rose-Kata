require 'item.rb'
require 'backstage_pass.rb'
require 'sulfuras.rb'
require 'aged_brie.rb'

class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality

    # check by name
    case @name
    when "Normal Item"
      @item = Item.new(@name, @days_remaining, @quality)
    when "Aged Brie"
      @item = AgedBrie.new(@name, @days_remaining, @quality, 1)
    when "Sulfuras, Hand of Ragnaros"
      @item = Sulfuras.new(@name, @days_remaining, @quality, 0, 0)
    when "Backstage passes to a TAFKAL80ETC concert"
      @item = BackstagePass.new(@name, @days_remaining, @quality, 1)
    end
  end

  def tick
    @item.tick

    # update the item values every tick
    @name = @item.name
    @days_remaining = @item.days_remaining
    @quality = @item.quality
  end
end
