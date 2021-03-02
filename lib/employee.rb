class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :hourly_rate, numericality: { only_integer: true }, length: {minimum: 40, maximum: 200}
  
  validates :store, presence: true 
end
