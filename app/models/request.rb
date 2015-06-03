class Request < ActiveRecord::Base
  has_many :offers
  belongs_to :user

  validates :message, presence: true
  
  validates :user_id, presence: true
end
