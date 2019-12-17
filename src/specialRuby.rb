#!/usr/bin/ruby -w

a = 1
b = 10

puts "if and Unless"

=begin
Unless is like an "if not", it is confusing with an "else" part
I guess it can be more readable without it.
In this example, it will print b: 10
=end
unless a < b
  puts a
else
  puts b
end

#Normal if, it will print a: 1
if a < b
  puts a
else
  puts b
end