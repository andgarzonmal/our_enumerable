module MyEnumerable 
  def all?
    each {|e| yield(e)}
  end
end
