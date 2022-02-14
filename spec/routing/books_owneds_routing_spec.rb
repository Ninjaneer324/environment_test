require "rails_helper"

RSpec.describe BooksOwnedsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/books_owneds").to route_to("books_owneds#index")
    end

    it "routes to #new" do
      expect(get: "/books_owneds/new").to route_to("books_owneds#new")
    end

    it "routes to #show" do
      expect(get: "/books_owneds/1").to route_to("books_owneds#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/books_owneds/1/edit").to route_to("books_owneds#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/books_owneds").to route_to("books_owneds#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/books_owneds/1").to route_to("books_owneds#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/books_owneds/1").to route_to("books_owneds#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/books_owneds/1").to route_to("books_owneds#destroy", id: "1")
    end
  end
end
