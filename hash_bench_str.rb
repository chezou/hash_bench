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

c = Time.now
hash_str = create_hash_str size
d = Time.now

c2 = Time.now
lookup_hash_str hash_str, 1000000
d2 = Time.now

puts "size:#{size}\tcreate:#{d - c}\tlookup:#{d2 - c2}"
