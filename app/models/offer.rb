class Offer < ActiveRecord::Base
  belongs_to :user
  belongs_to :request

  validates :user_id, presence: true
end
