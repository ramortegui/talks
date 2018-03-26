# Start the calculator with zero
val = 0

# Define an anonymous function for add

sum = fn val, add ->
  val + add
end

# Define an anonymous function for sub
sub = fn val, sub ->
  val - sub
end

# IO.puts "Inital value #{val}"
# IO.puts "Add 1"
# sum.(val,1)
# IO.puts "After add 1: #{val} !wrong"
# val = sum.(val,1)
# IO.puts "After add 1: #{val}";
