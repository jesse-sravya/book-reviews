class BookReview < ApplicationRecord
    validates :rating, :presence => true,
            :numericality => true,
            :length => { :minimum => 0, :maximum => 5 }

end
