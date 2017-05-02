import_file("calculator.ex")

pid = Calculator.init(10)

send pid, {:+, 1}

receive_message = fn() ->
  receive do
    {:ok, val} -> IO.puts val
    after 3000 -> IO.puts "No messages"
  end
end

mypid = self()

send pid,{:=, mypid}

receive_message.()
