init_p
task Fibonacci()
  task inner(m)
    if m < 2 then
      return m
    end
    return inner(m-1) + inner(m-2)
  end
  return inner
end
myfunction = Fibonacci()

task add(a, b)
	return a + b
end
task add2(func, a) 
	task nauja(b)
		return func(a, b)
	end
	return nauja
end

add2to = add2(add, 6)
print(add2to(2))
close_p









