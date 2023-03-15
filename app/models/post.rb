class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    validate :must_be_fiction_or_nonfiction

    #Custom validation
    def must_be_fiction_or_nonfiction
      unless (category == "Fiction" || category == "Non-Fiction")
        errors.add(:category, "is not included in the list")
        end
    end
end
