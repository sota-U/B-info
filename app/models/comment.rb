class Comment < ApplicationRecord
  with_options presence: true do
    validates :tweet
    validates :text
    validates :user
  end

  belongs_to :user
  belongs_to :tweet
end
