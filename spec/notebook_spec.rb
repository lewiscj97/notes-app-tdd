require 'notebook'

describe Notebook do
  it { is_expected.to respond_to(:new_note) }
end