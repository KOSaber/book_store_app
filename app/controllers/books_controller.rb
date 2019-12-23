class BooksController < ApplicationController
    before_action :authenticate_user!, except:[:index, :show]
    # @book = current_user.books
  

    def index
        @books = Book.all
        # render json: @books
        # @books = Book.where(user_id: current_user.id)
    end
    def show
        @books = Book.find(params[:id])
        # This code below has a quick demo of how to form a json object with nested ingredients on a recipe.
        # render json: @book, include: :users
        #@books = @book.users
    end
    def new
        @book = current_user.books.new
    end
    
      def create    
        @book = Book.create(book_params)
        current_user.books << @book
        # @book.user_id = current_user.id
        redirect_to userBook_path

      end
      
      def edit
        @book = Book.find(params[:id])
      end
      def update
        book = Book.find(params[:id])
        book.update(book_params)
        redirect_to userBook_path
      end

      def userBook
        # @book = Book.find(params[:id])
        # @books = Book.where(user_id: current_user.id)
        @books = current_user.books
      end

      def destroy
        Book.find(params[:id]).destroy
      
        redirect_to userBook_path
      end

      private

    def book_params
      params.require(:book).permit(:title, :auther, :publisher, :edition, :status, :pic, :price)
    end
    def check_id
      @book = current_user.books
    end
end


  

    
 