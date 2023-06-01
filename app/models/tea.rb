class Tea < ApplicationRecord
  has_many :subscriptions#, dependent: :destroy
  
  validates_presence_of :title, 
                        :description, 
                        :temperature, 
                        :brew_time
  
  # validates :title, :description, :temperature, :brew_time, presence: true
end
