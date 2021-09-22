describe Notebook do
  it { is_expected.to respond_to(:new_note).with(title, body) }
end