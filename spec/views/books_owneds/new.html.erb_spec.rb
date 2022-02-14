require 'rails_helper'

RSpec.describe "books_owneds/new", type: :view do
  before(:each) do
    assign(:books_owned, BooksOwned.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new books_owned form" do
    render

    assert_select "form[action=?][method=?]", books_owneds_path, "post" do

      assert_select "input[name=?]", "books_owned[user_id]"

      assert_select "input[name=?]", "books_owned[book_id]"
    end
  end
end
