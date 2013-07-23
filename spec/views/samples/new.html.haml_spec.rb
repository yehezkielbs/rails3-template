require 'spec_helper'

describe "samples/new" do
  before(:each) do
    assign(:sample, stub_model(Sample,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new sample form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", samples_path, "post" do
      assert_select "input#sample_name[name=?]", "sample[name]"
    end
  end
end
