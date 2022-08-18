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

Mylist = List.new(1, 2, 3, 4)
