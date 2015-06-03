class Offer < ActiveRecord::Base
  belongs_to :user
  belongs_to :request

  validates :user_id, presence: true

  after_save :accept_request

  validates :message, presence: true
  validates_inclusion_of :offered, :in => [true, false]

  def accept_request
    if self.offered = true
      self.request.accepted = true 
      self.request.save
    end
  end


end
