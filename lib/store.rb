class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true , greater_than: 0 }
  validate :men_or_womens

  def men_or_womens
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:apparel, "Sorry! Stores must carry at least one of the men's or women's apparel.")
    end
  end
end
