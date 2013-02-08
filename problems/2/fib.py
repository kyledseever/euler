#! /usr/bin/env python

# python lambdas kinda suck
def fib(collect, next):
    collect.append(sum(collect[-2:]))
    return collect

print sum(filter(lambda x: x < 4000000 and x & 1 == 0, reduce(fib, range(1, 100), [1, 2])))
