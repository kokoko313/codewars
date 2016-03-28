def rle(str)
  (str || "").split("").chunk{|c| c}.collect{|c, a| [a.size, c]}
end


def rle(str)
  return [] if str.nil?
  str.scan(/(.)(\1*)/).map{ |char, repeat| [1 + repeat.length, char]}
end