def fibs(n)
	if n == 0
		return [0]
	elsif n == 1
		return [0, 1]
	else
	array = [0, 1]
	(n - 1).times { |number| array.push(array[-1] + array[-2]) }
	return array
	end
end

def fibs_rec(n, ary = [0, 1])
	if n == 0
		return [0]
	elsif n == 1
		return ary
	else
	ary.push(ary[ary.length - 1] + ary[ary.length - 2])
	fibs_rec(n-1, ary)
	end
end

print fibs(4)
print fibs_rec(4)