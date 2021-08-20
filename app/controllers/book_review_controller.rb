class BookReviewController < ApplicationController

    def search
        title = params[:title]
        description = params[:description]
        following_user_name = params[:following_user_name]

        reviews = get_reviews(title, description, following_user_name)
        render json: {
            data: {
                reviews: reviews
            }
        }, status: :ok
    end

end
