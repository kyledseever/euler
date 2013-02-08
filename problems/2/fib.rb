#!/usr/bin/env ruby

puts ((1...100).reduce([1,2]) { |acc| acc += [acc[-2, 2].inject(:+)]}.select {|x| x < 4000000 and x & 1 == 0}.inject(:+))
