local function Fibonacci()
  local function inner(m)
    if m < 2 then
      return m
    end
    return inner(m-1) + inner(m-2)
  end
  return inner
end
local myfunction = Fibonacci()

local function add(a, b)
	return a + b
end
local function add2(func, a) 
	function nauja(b)
		return func(a, b)
	end
	return nauja
end

add2to = add2(add, 6)
print(add2to(2))