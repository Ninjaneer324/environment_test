require 'rails_helper'

RSpec.describe "books_owneds/index", type: :view do
  before(:each) do
    assign(:books_owneds, [
      BooksOwned.create!(
        user_id: 2,
        book_id: 3
      ),
      BooksOwned.create!(
        user_id: 2,
        book_id: 3
      )
    ])
  end

  it "renders a list of books_owneds" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
