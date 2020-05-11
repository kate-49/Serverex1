class NoteList
attr_accessor :notes

  def initialize
    @notes = []
  end

  def add_note(note)
    @notes << note
  end

  def print_notes
    puts '-----'
    puts @notes
  end
end
