def validate(n)
 	
	digits = n.split('').map! { |s| s.to_i }
  
	odd_digits = digits.values_at(*digits.each_index.select(&:odd?))
	even_digits = digits.values_at(*digits.each_index.select(&:even?))
	even_digits.map! {|i| i*2}
	beven_digits = even_digits.select{|i| i > 9}.map!{|i| i-9}
	even_digits.delete_if { |a| a > 10 }
	total = odd_digits.inject(:+) + beven_digits.inject(:+) + even_digits.inject(:+)
	
	return total%10 == 0
end

puts "enter X"

a = gets.to_s

validate(a)