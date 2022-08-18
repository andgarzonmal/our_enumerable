require_relative 'my_enumerable'

class List
  include MyEnumerable

  def initialize(*list)
    @list = *list
  end

  def each(&block)
    @list.each(&block)
  end
end

Mylist = List.new(:foo, :bar)
puts Mylist.filter
