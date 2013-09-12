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

p @hash_counter 