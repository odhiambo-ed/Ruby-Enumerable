require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |f| f < 5 })
puts(list.all? { |f| f > 5 })

# Test #any?
puts(list.any? { |f| f == 2 })
puts(list.any? { |f| f == 5 })
