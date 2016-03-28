def divisors(n)
  a = []
  i = 2
  while i < n
  	a << i if n.to_f % i == 0  
  	i += 1
  end
  puts "#{n} is prime" if a[0].nil?

  return a
end

puts divisors(13)

def divisors(n)
  vals = (2..n/2).select{|x| n%x==0}
  vals.empty? ? "#{n} is prime" : vals
end

"(%d%d%d) %d%d%d-%d%d%d%d" % numbers

# Test if number is prime
def isPrime(num)
  vals = (2..num/2).select{|item| num%x==0}
  vals.empty? 
  #? "#{n} is prime" : vals
  
end