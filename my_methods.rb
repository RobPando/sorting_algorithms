module Enumerable

	def my_each
		for i in 0...self.length
		yield(self[i])
		end
	end

	def my_each_with_index
		for i in 0...self.length
		yield(self[i], i)
		end
	end

	def my_select
		transform = []
			for i in 0...self.length
				transform[i] = self[i] if yield self[i]
			end
		return transform
	end

	def my_all
		condition = false
		for i in 0...self.length
			unless yield self[i] 
				return condition
				break
			end
		end
		condition = true
		return condition
	end

	def my_any
		condition = true
		for i in 0...self.length
			if yield self[i] 
				return condition
				break
			end
		end
		condition = false
		return condition
	end

	def my_none
		condition = true 
		for i in 0...self.length
			if yield self[i]
				condition = false
				break
			end
		end
		return condition
	end

	def my_count
		count = 0
		for i in self
			count += 1
		end
		return count
	end

	def my_map
		for i in 0...self.length
			self[i] = yield self[i]
		end
	end

	def my_inject
		value = self[0]
		for i in 1...self.length
			value = yield(value, self[i])
		end
	end

end














