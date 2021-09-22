class Notebook
  def initialize
    @notes = []
  end

  def new_note(title, body)
    @notes << {
      title: title,
      body: body
    }
  end

  def all_titles
    @notes.each do |note|
      puts "Title: #{note[:title]}"
    end
  end

  def show_notes
    @notes.each do |note|
      print "Title: #{note[:title]}, Body: #{note[:body]}"
    end
  end
end