require 'notebook'

describe Notebook do
  describe "#new_note" do
    it { is_expected.to respond_to(:new_note) }  

    it "creates a new note with the title and body which is visible" do
      subject.new_note("This is the title", "and this is the body")
      expect{subject.show_notes}.to output("Title: This is the title, Body: and this is the body").to_stdout
    end
  end
end