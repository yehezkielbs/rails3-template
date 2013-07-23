require 'spec_helper'

describe "samples/show" do
  before(:each) do
    @sample = assign(:sample, stub_model(Sample,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
