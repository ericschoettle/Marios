require 'rails_helper'

describe "show_product_details" do
  it "adds new product" do
    visit products_path
    click_link 'Make new product'
    fill_in 'Name', :with => 'FOOOOOD'
    fill_in 'Country', :with => 'United States'
    fill_in 'Cost', :with => 3.14
    click_on 'Create Product'
    expect(page).to have_content 'FOOOOOD'
  end
end
