a = "cruel world"
puts a.scan(/\w+/)        #=> ["cruel", "world"]
puts a.scan(/.../)        #=> ["cru", "el ", "wor"]
puts a.scan(/(...)/)      #=> [["cru"], ["el "], ["wor"]]
puts a.scan(/(..)(..)/)   #=> [["cr", "ue"], ["l ", "wo"]]
a.scan(/\w+/) {|w| print "<<#{w}>> " }
print "\n"
a.scan(/\w+/) {|x,y| print y, x }
print "\n"


def spinWords(string)
  string.split.map{ |s| s.length > 4 && s.reverse! || s }.join(' ')
end