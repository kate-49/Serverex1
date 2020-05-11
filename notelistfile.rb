require_relative 'notelist.rb'

require 'socket'

server = TCPServer.new(2345)

socket = server.accept

@note = NoteList.new

text = ' '

until text == 'quit'
  socket.puts "What do you want to do?"
  text = socket.gets.chomp.downcase

    if text == 'print'
      @note.print_notes
    end

    if text == 'add'
      text = socket.gets.chomp
      @note.add_note(text)
    end
  end

socket.close
