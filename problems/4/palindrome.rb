#!/usr/bin/env ruby

def is_palindromic(num)
    num = num.to_s
    length = num.length
    mid = length/2
    offset = length & 1
    num[0..mid-1] == num[mid+offset..num.length].reverse 
end

palindromes = []
(100..999).each do |i| 
    (100..999).each do |j| 
        palindromes.push(i*j) if is_palindromic(i*j)
    end
end

puts palindromes.sort![-1]
