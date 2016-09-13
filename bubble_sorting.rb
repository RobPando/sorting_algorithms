def sort_by (array)
	a = array.length
	until a == 0
		(1...a).each do |i|
			if array[i-1] > array[i]
				array[i-1], array[i] = array[i], array[i-1]
			end
		end
		a -= 1
	end
	return array
end

sort_by([3, 2, 5, 1, 7, 6, 4])

def block_sort_by (array)
	a = array.length
	until a == 0
		(1...a).each do |i|
			if yield(array[i-1], array[i]) > 0
				array[i-1], array[i] = array[i], array[i-1]
			end
		end
		a -= 1
	end
	return array
end

sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
   end