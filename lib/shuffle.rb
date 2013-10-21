class Shuffle

  def initialize items
    if (items.is_a? Array)
      @items = items
    else
      @items = [items]
    end

    @index = 0
  end

  def to_str
    next_item.to_str
  end

  def to_s
    self.to_str
  end

  def next_item
    next_item = @items[@index]
    @index = (@index + 1) % @items.length
    return next_item
  end

end
