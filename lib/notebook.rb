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
    
  end

  def show_notes
    @notes.each do |x|
      print "Title: #{x[:title]}, Body: #{x[:body]}"
    end
  end
end