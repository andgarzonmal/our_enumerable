require_relative 'myEnumerable'

class List 
  include MyEnumerable
  
  def initialize (*list)
    @list = *list
  end

  def each(&block)
    @list.each(&block)
  end
end

Mylist = List.new(1,2,3,4)

Mylist.all? {|e| e < 5}

Mylist.all? {|e| e > 5}

Mylist.any? {|e| e == 2}

Mylist.any? {|e| e == 5}