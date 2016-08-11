class Cat

	def initialize(name, preferred_food, meal_time)
		@name = name
		@preferred_food = preferred_food
		@meal_time = meal_time
	end
	def eats_at
       if @meal_time >= 1 && @meal_time <= 11
       	@meal_time.to_s + " PM"
       elsif @meal_time == 0
           "12 AM"
       elsif @meal_time > 12 &&  @meal_time <= 23
       	(@meal_time - 12).to_s + " PM"
       else
       	 return "12 PM"
       end
      
	end
end

bengal = Cat.new("Stuffy","beef", 21)
bombay = Cat.new("Stella","meat", 12)


puts "bengal"
puts bengal.eats_at
puts "bombay"
puts bombay.eats_at