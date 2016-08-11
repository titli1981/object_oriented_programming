class Paperboy
  def initialize(name, experience, side)
    @name = name
    @experience = experience
    @side = side
    @earnings = 0
  end

  def quota
    (@experience/2)+50
  end

  def deliver(start_address, end_address)
  total_papers = end_address -start_address
  minimum_amount = total_papers * 0.25

  if total_papers > quota
    commission_paid = (total_papers - quota)*0.5 + minimum_amount
    @earnings += commission_paid
    @experience += total_papers

  elsif total_papers < quota
   minimum_amount -= 2
   @experience += total_papers
   @earnings  += minimum_amount

 else
   @experience += total_papers
   @earnings += minimum_amount
  end
  end
end

tommy = Paperboy.new("Tommy",34,"even")
puts tommy.quota

puts tommy.deliver(102,345)
