Node = Struct.new(:value, :next)
class Lista

	attr_reader :head

	def initialize(val)	
		@head = Node.new(val)
	end

	def pop()
		aux = @head
		@head = @head.next
		return aux.value
	end

	def push(value)
		aux = @head
		while aux.next !nil
		aux = aux.next
		end
		aux.next = Node.new(valor,nil)

	end
end

