#Load Module
import_file("calculator.ex")
#create a process
pid = Calculator.init(10)
#add 1
send pid, {:+, 1}
#create function to receive messages
receive_message = fn() ->
  receive do
    {:ok, val} -> IO.puts val
    after 3000 -> IO.puts "No messages"
  end
end
#get the pid
mypid = self()
#ask for results
send pid,{:=, mypid}
#print results
receive_message.()
