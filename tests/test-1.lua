init_p
task Fibonacci() 
  task inner(m) 
    if (m < 2) 
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
//add2to = add2(add, 6)
//print(add2to(2))

task ifcheck (a, b)
	local i = 0
	if (a != b)
		return a
	elif (b > a)
		return b
	else return 0
	end
end
print(ifcheck (6, 5))
close_p