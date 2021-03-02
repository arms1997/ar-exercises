class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}, presence: true
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :men_or_women_selected


  def men_or_women_selected 
    if !(womens_apparel || mens_apparel)
      errors.add :mens_apparel, :womens_apparel, message: "Please Select One"
    end
  end
end
