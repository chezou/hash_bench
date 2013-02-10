class Random
  # define rand(max) for topaz
  unless Kernel.respond_to?("rand")
    alias :original_rand :rand
    private :original_rand
    def rand(value = 1.0)
      normalized = 
        case value
        when Fixnum then (original_rand * value).to_i
        when Float then  original_rand * value
        when Range 
          if value.last.class == Fixnum && value.first.class == Fixnum
            (original_rand * (value.last - value.first) + value.first).to_i
          else
            original_rand * (value.last - value.first) + value.first
          end
        else raise TypeError, "unsupported type #{value.class}"
        end
      normalized
    end
  end
end

rnd = Random.new
puts rnd.rand 10
puts rnd.rand 5.5
puts rnd.rand 10..20
puts rnd.rand 10..20.1
puts rnd.rand("foo")
