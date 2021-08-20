module BookReviewHelper

    def get_reviews title, description, following_user_name
        conditions = {}
        conditions[:title] = title unless title.blank?
        conditions[:description] = description unless description.blank?
        
        # TODO: add current user filter when authorization module is ready
        conditions[:user_ids] = User.where(name: following_user_name) unless following_user_name.blank?

        BookReview.where(:all, :conditions => conditions)
    end

end
