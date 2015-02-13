require_relative 'node'

class LinkedList
	
	def initialize(value)
		@root = Node.new(value)
		@last = @root
	end

	def push(value)
		new_node = Node.new(value)
		@last.next = new_node
		@last = new_node
	end

	def each 
		node = @root
		while node != nil
			yield (node.value)
			node = node.next
		end
	end

	def each_node 
		node = @last
		while node != nil
			yield (node.value)
			node = node.next
		end
	end

	def reverse
		node = @root
		next_node = node.next
		node.next = nil
		while next_node != nil
			next_node_after = next_node.next
			next_node.next = node
			node = next_node
			next_node = next_node_after
		end
		temp_last = @last
		@last = @root
		@root = temp_last
	end
	
	def sum
		acc = 0
		self.each do |value|
			acc += value.to_i
		end
		acc
	end 

	def to_s
		cad = ""
		self.each do |value|
			cad << value.to_s + " -> "
		end
		cad
		#node = @root
		#cad = ""
		#while node != nil
			#cad << node.value.to_s + " -> "
			#node = node.next
		#end 
		#cad 
	end

end

