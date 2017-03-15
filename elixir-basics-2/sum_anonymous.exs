#Anonymous function
sum = fn(x,y) -> x + y end
IO.puts sum.(1,3) #4



#Anonymous function
sum = fn
(x,_) -> x 
(x,y) -> x + y 
end

IO.puts sum.(1,3) #1
