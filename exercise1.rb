require 'socket'

server = TCPServer.new(2345)

socket = server.accept

they_said = 'empty'

until they_said == 'quit'

  socket.puts "what do you say?"

  they_said = socket.gets.chomp

  socket.puts "You said: #{they_said}. Goodbye!"

end

socket.close
