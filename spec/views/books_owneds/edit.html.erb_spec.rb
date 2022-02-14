require 'rails_helper'

RSpec.describe "books_owneds/edit", type: :view do
  before(:each) do
    @books_owned = assign(:books_owned, BooksOwned.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit books_owned form" do
    render

    assert_select "form[action=?][method=?]", books_owned_path(@books_owned), "post" do

      assert_select "input[name=?]", "books_owned[user_id]"

      assert_select "input[name=?]", "books_owned[book_id]"
    end
  end
end
