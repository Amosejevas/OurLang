init_p
local task foo(n)
	local sum = 0
	cycle (i = 1; 10; n) do
		print(sum)
		sum = sum + i
	end
	return sum
end
print(foo(2))
close_p