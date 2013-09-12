fibonacci = ->(x){ x < 2 ? x : fibonacci[x-1] + fibonacci[x-2] }
sum = 0
(1...35).each { |n| sum+= fibonacci[n] if fibonacci[n] % 2 == 0 }
puts sum
