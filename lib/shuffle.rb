class Shuffle

  def initialize items
    if (items.is_a? Array)
      @items = items
    else
      @items = [items]
    end

    @index = 0
  end

  def method_missing(method, *args, &block)
    next_item.send(method, *args, &block)
  end

  private
  def next_item
    next_item = @items[@index]
    @index = (@index + 1) % @items.length
    return next_item
  end

end
