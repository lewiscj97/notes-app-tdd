class Notebook
  def initialize
    @notes = []
  end

  def new_note(title, body)
    @notes << {
      title: title,
      body: body
    }
    nil
  end

  def all_titles
    @notes.each do |note|
      puts "Title: #{note[:title]}"
    end
    nil
  end

  def show_note(title)
    note = @notes.detect { |note| note[:title] == title }
    raise "This note doesn't exist" if note == nil
    puts "Title: #{note[:title]}"
    puts "Body: #{note[:body]}"
    nil
  end

  def show_notes
    @notes.each do |note|
      puts "Title: #{note[:title]}, Body: #{note[:body]}"
    end
    nil
  end
end