module MyEnumerable 
  def all?
    if block_given?
      result = []
      each {|e| result.push(yield(e))}
      # puts result
      if result.include?(false)
        puts 'false'
      else
        puts 'true'
      end

    else
      puts "true"
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
