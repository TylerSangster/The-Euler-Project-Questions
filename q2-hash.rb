@hash_counter = 0

fibonacci_hash = Hash.new{ |h,x|
  @hash_counter += 1
  h[x] = x < 2 ? x : h[x-1] + h[x-2]
}


p (1..Float::INFINITY).map{|x| 

  if fibonacci_hash[x] > 4000000
    fibonacci_hash.delete_if {|key, value| key >= x }
    break fibonacci_hash.each { |x| sum+= x if x.even? }
  end
}
# => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765]

p @hash_counter # => 21