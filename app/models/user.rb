class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :requests, dependent: :destroy
  has_many :offers, dependent: :destroy

  # checks to see if you have chosen one of given possibilities
    validates :role, inclusion: { in: %w(band host admin),
      message: "you have not chosen a valid role" }, presence: true

  
end
