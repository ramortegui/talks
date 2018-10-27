handle_open = fn
  {:ok, file} -> "Read: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("exists.txt"))
IO.puts handle_open.(File.open("no_exists.txt"))

