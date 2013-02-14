#!/usr/bin/env ruby

def is_prime(val)
    (2..Math.sqrt(val)).each {|n| return false if val % n == 0 }
    true
end

val = 600851475143
last = Math.sqrt(val).to_i
(2..last).reverse_each do |i| 
    if is_prime(i) and val % i == 0
        puts i
        exit
    end
end
