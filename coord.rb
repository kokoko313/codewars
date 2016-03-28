def coordinates(degrees, radius)
	ans = []
			ans << (radius*Math.cos(degrees*Math::PI / 180)).round(10)
			ans << (radius*Math.sin(degrees*Math::PI / 180)).round(10)
 	ans
end

puts coordinates(12, 10000)

#--------------------------------------------------

def coordinates(degrees, radius)
  include Math
  
  radians = degrees * PI / 180

  x = (radius * cos(radians)).round(10)
  y = (radius * sin(radians)).round(10)

  return [x, y]
end