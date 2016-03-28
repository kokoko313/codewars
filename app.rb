class String
  def toJadenCase
    arr = self.split
   	a = arr.map! { |i| "" + i.to_s.strip.capitalize + "" }.join(" ")
   	return a
   end
end

a = "How can mirrors be real if our eyes aren't real".toJadenCase
puts a

class String
  def toJadenCase
    self.split.map(&:capitalize).join(" ")
  end
end