module Question 
	class SimpleExpec
		attr_accessor :text, :right, :distractor
	
	 def initialize(t,r,d)
		@text = args[:text]
		@right = args[:right]
		@distractor = args[:distractor]
		raise ArgumentError, 'Specify :text' unless @text
		raise ArgumentError, 'Specify :right' unless @right
		raise ArgumentError, 'Specify :distractor' unless @distractor
	 end
	def to_s()
	end
	 end
end
