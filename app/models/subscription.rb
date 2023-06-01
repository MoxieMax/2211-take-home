class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tea
  
  validates_presence_of :title, 
                        :price, 
                        :status, 
                        :frequency
  
  # validates :title, :price, :status, :frequency, presence: true
  
  enum status: { 'active' => 0, 'cancelled' => 1 }
end
