class ReviewsController < ApplicationController
    
    def index
        @reviews = Review.all      
    end

    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    def create    
        @review =Review.new(rev_params)
        @review.save
        redirect_to request.referer 
      end
      
      def edit
        @review = Review.find(params[:id])
      end

      def update
        review = Review.find(params[:id])
        review.update(rev_params)
        redirect_to userBook_path
      end

    def destroy
        Review.find(params[:id]).destroy
        redirect_to userBook_path
      end
      private
      def rev_params
        params.require(:review).permit(:book_id, :recommend, :rate)
      end
    
end
