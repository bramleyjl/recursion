def merge_sort(ary)
	return ary if ary.length <= 1

	ary1 = ary.slice!(0, ary.length/2)
	ary2 = ary

	ary1 = merge_sort(ary1)
	ary2 = merge_sort(ary2)

	def merge(first, second)
	  new_array = []

	  	until first.empty? || second.empty? do
	  	  if first[0] < second[0]
	  		new_array << first.shift
	  	  else
	  		new_array << second.shift
	  	  end
	  	end

	  (new_array << first).flatten! unless first.empty?
	  (new_array << second).flatten! unless second.empty?

	  return new_array
	end

	merge(ary1, ary2)

end

print merge_sort([101, 72, 333, 1, 8102, 354, 05, 71, 85, 11, 4, 8, 22])