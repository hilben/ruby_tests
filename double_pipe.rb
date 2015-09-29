def s(x,v)
  raise Exception, "x =#{x} v = #{v}" if x != v
end


a = 1
b = 2
c = 3
null = nil

x = 0



x ||= null
s(x,0)

x ||= a
s(x,0)

x = a || b
s(x, a)

x = b || a
s(x, b)

x = null || a
s(x, a)

x = a || null
s(x, a)



x = a || null || b
s(x, a)


x = null || null || b
s(x, b)






