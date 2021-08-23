class Like < ApplicationRecord
  with_options presence: true do
    validates :tweet
    validates :user
  end

  belongs_to :tweet
  belongs_to :user
  validates_uniqueness_of :tweet_id, scope: :user_id
end
