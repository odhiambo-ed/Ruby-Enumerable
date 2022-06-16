# Module defined in my_enumerable.rb file
module MyEnumerable
  def all?
    return true unless block_given?

    each { |i| return false unless yield(i) }
    true
  end

  def any?
    return true unless block_given?

    each { |i| return true if yield(i) }
    false
  end

  def filter?
    arr = []
    each { |_n| arr.push(i) if yield(i) }
    arr
  end
end
