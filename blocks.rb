class CartesianProduct
	include Enumerable
		
		def initialize(seq1, seq2)
			@seq1 = seq1
			@seq2 = seq2
		end
		
		def each
			#is not executed if sequences are empty
			unless @seq1.empty? && @seq2.empty?
			block = []
			#iterates through seq1 while putting seq1 and seq2 into its own array
			@seq1.each do |s1|
				block << @seq2.each {|s2| yield [s1] << s2}
			end
		end
	end
	

end
	
c = CartesianProduct.new([:a,:b], [4,5])
c.each{ |elt| puts elt.inspect}
