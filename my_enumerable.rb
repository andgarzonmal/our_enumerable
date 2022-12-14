module MyEnumerable
  def all?
    if block_given?
      result = []
      each { |e| result.push(yield(e)) }
      # puts result
      if result.include?(false)
        puts 'false'
      else
        puts 'true'
      end

    else
      puts 'true'
    end
  end

  def any?
    if block_given?
      result = []
      each { |e| result.push(yield(e)) }
      # puts result
      if result.include?(true)
        puts 'true'
      else
        puts 'false'
      end
    else
      puts 'true'
    end
  end

  def filter
    if block_given?
      result = []
      each { |e| result.push(e) if yield(e) }
      print result
    else
      puts self
    end
  end
end
