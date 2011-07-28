require 'benchmark'
puts Benchmark.measure  { 100000.times  { print "." } }
