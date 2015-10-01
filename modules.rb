module A

 def a
   puts "A"
   puts self
 end

 def b
   eval("def self.xy; puts 'XY' end")
 end
end


class ASDF
  include A

  def a
    puts "B"
    super
  end
end


obj = ASDF.new
puts "obj.a"
puts obj.a

puts "obj.b"
puts obj.b

puts "obj.xy"
puts obj.xy
