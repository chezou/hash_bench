# -*- coding: utf-8 -*-

if ARGV.size == 0
  puts "You need 1 argment."
  puts "Usage: #{$0} num(million)"
  exit 1
end


size = ARGV[0].to_i * 1000000

def create_hash size
  hash = Hash.new
  size.times {|i|
    hash[i] = i
  }
  hash
end

def create_hash_str size
  hash = Hash.new
  size.times {|i|
    hash[i.to_s] = i
  }
  hash
end

def lookup_hash hash, repeat
  repeat.times{|i|
    hash[i]
  }
end

def lookup_hash_str hash, repeat
  repeat.times{|i|
    hash[i.to_s]
  }
end

a = Time.now
hash_i = create_hash size
b = Time.now

a2 = Time.now
lookup_hash hash_i, 1000000
b2 = Time.now

puts "size:#{size}\tcreate:#{b - a}\tlookup:#{b2 - a2}"


