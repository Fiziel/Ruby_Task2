begin
loop do 
numbers = []
i = 0
puts ''
puts "How many numbers are needed?"
amount_of_numbers = STDIN.gets.chomp.to_i
while i<amount_of_numbers do
puts 'Number ' + (i+1).to_s + ':'
numbers[i] = STDIN.gets.chomp.to_i
i+=1
end
puts 'Your numbers: ' + numbers.to_s
puts 'Select an operation: '
operation = STDIN.gets.chomp

puts 'Result:'
case operation
when '+'
  result = 0
  numbers.each { |n| result = result + n }
  puts result
when '-'
  result = numbers[0]
  numbers.shift
  numbers.each { |n| result = result - n }
  puts result
when '*'
  result = 1
  numbers.each { |n| result = result * n }
  puts result
when '/'
  begin
  result = numbers[0]
  numbers.shift
  numbers.each { |n| result = result / n }
  puts result
  rescue ZeroDivisionError
  puts "ZeroDivisionError! Try again"
  end
else
  puts 'Try again!'
end
end
end