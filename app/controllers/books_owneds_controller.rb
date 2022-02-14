class BooksOwnedsController < ApplicationController
  before_action :set_books_owned, only: %i[ show edit update destroy ]

  # GET /books_owneds or /books_owneds.json
  def index
    @books_owneds = BooksOwned.all
  end

  # GET /books_owneds/1 or /books_owneds/1.json
  def show
  end

  # GET /books_owneds/new
  def new
    @books_owned = BooksOwned.new
  end

  # GET /books_owneds/1/edit
  def edit
  end

  # POST /books_owneds or /books_owneds.json
  def create
    @books_owned = BooksOwned.new(books_owned_params)

    respond_to do |format|
      if @books_owned.save
        format.html { redirect_to books_owned_url(@books_owned), notice: "Books owned was successfully created." }
        format.json { render :show, status: :created, location: @books_owned }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @books_owned.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books_owneds/1 or /books_owneds/1.json
  def update
    respond_to do |format|
      if @books_owned.update(books_owned_params)
        format.html { redirect_to books_owned_url(@books_owned), notice: "Books owned was successfully updated." }
        format.json { render :show, status: :ok, location: @books_owned }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @books_owned.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books_owneds/1 or /books_owneds/1.json
  def delete
    @books_owned = BooksOwned.find(params[:id])
  end
  
  def destroy
    @books_owned.destroy

    respond_to do |format|
      format.html { redirect_to books_owneds_url, notice: "Books owned was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_books_owned
      @books_owned = BooksOwned.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def books_owned_params
      params.require(:books_owned).permit(:user_id, :book_id)
    end
end
