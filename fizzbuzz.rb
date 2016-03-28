puts (1..20).map {|i|
  f = i % 3 == 0 ? 'Fizz' : nil
  b = i % 5 == 0 ? 'Buzz' : nil
  f || b ? "#{ f }#{ b }" : i
  }

   (1..100).each do |num|
  message = ""
  message << "fizz" if num%3 == 0
  message << "buzz" if num%5 == 0
  message << num.to_s if message.length == 0
  puts message
  end