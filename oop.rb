class Dessert
	def initialize(name, calories)
		@name = name
		@calories = caloires
	end
	
	def healthy?
		if @calories < 200
			true
		else
			false	
	end
	
	def delicious?
		true
	end
end

class Jellybean < Dessert
	def initialize(name, calories, flavor)
		@flavor = flavor
	
	end
	
	def delicious?
		if @flavor == "black licorice"
			false
		else
			true
	end
	
end
