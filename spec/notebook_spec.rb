require 'notebook'

describe Notebook do
  describe "#new_note" do
    it { is_expected.to respond_to(:new_note) }  

    it "creates a new note with the title and body which is visible" do
      subject.new_note("This is the title", "and this is the body")
      expect{ subject.show_notes }.to output("Title: This is the title, Body: and this is the body\n").to_stdout
    end
  end

  describe "#all_titles" do
    it { is_expected.to respond_to(:all_titles) }

    it "shows all of the titles of the notes in the notebook" do
      subject.new_note("This is the title", "and this is the body")
      subject.new_note("This is another title", "and this is the new body")

      expect{ subject.all_titles }.to output("Title: This is the title\nTitle: This is another title\n").to_stdout
    end
  end

  describe "#show_note" do
    it { is_expected.to respond_to(:show_note) }

    it "shows the title and body of a specific note" do
      subject.new_note("This is the title", "and this is the body")
      subject.new_note("This is another title", "and this is the new body")

      expect{ subject.show_note("This is the title") }.to output("Title: This is the title\nBody: and this is the body\n").to_stdout
    end
  end
end