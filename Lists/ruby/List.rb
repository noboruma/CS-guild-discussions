#!/usr/bin/ruby

class MyList
  def initialize(value)
    @value = value
    @next  = nil
  end

  def print()
    puts "#{@value}"
    if @next != nil
      @next.print();
    end
  end

  def append(value)
    if @next == nil
      @next = MyList.new(value)
    else
      @next.append(value)
    end
  end

  def removeIn(value, head)
    if @value == value
      head = @next
    elsif @next != nil
      @next.inner_remove(value, self)
    end
  end

  def removeRet(value)
    if @value == value
      return @next
    elsif @next != nil
      @next.inner_remove(value, self)
    end
    return self
  end

  def inner_remove(value, prev)
    if @value == value
      prev.next = @next
    elsif @next != nil
      @next.inner_remove(value, self)
    end
  end

  private :inner_remove
end


