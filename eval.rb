class Demo
  def initialize(n)
    @secret = n
  end
  def get_binding
    return binding()
  end
end

k1 = Demo.new(99)
b1 = k1.get_binding
k2 = Demo.new(-3)
b2 = k2.get_binding

puts eval("@secret", b1)   #=> 99
puts eval("@secret", b2)   #=> -3
puts eval("@secret")       #=> nil


b2.eval('def test
       puts "hello!"
       end')

       k2.test
       k1.test
