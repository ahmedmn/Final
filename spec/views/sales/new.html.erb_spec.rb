require 'rails_helper'

RSpec.describe "sales/new", :type => :view do
  before(:each) do
    assign(:sale, Sale.new(
      :good => "MyString",
      :price => "9.99",
      :city => "MyString"
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input#sale_good[name=?]", "sale[good]"

      assert_select "input#sale_price[name=?]", "sale[price]"

      assert_select "input#sale_city[name=?]", "sale[city]"
    end
  end
end
