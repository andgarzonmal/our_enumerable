module MyEnumerable 
  def all?
    result = []
    each {|e| result.push(yield(e))}
    # puts result
    if result.include?(false)
      puts 'false'
    else
      puts 'true'
    end
  end

  def any?
    result = []
    each {|e| result.push(yield(e))}
    # puts result
    if result.include?(true)
      puts 'true'
    else
      puts 'false'
    end
  end
end
