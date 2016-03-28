numbers = [1, 2, 3, 4, 5]

# numbers.square()  # must return [1, 4, 9, 16, 25]
# numbers.cube()    # must return [1, 8, 27, 64, 125]
# numbers.average() # must return 3
# numbers.sum()     # must return 15
# numbers.even()    # must return [2, 4]
# numbers.odd()     # must return [1, 3, 5]

class Array
  def square
    map{|x| x*x}
  end
  def cube
    map{|x| x*x*x}
  end
  def average
  	sum / size
  end
  def sum
  	inject(0.0) { |res, x| res + x }
  end
  def even
  	select {|x| x.even?}
  end
  def odd
  	select {|x| x.odd?}
  end

  # now fill in the rest
end
# ----------------------------------------------------
class Array
  def square
    map {|x| x*x}
  end

  def cube
    map {|x| x**3}
  end
  
  def average
    sum / size
  end
  
  def sum
    reduce(:+)
  end
  
  def even
    select(&:even?)
  end
  
  def odd
    select(&:odd?)
  end
end