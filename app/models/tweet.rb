class Tweet < ApplicationRecord

  with_options presence: true do

    validates :title
    validates :text
    validates :user
  end

  belongs_to :user
  has_many_attached :images
end
