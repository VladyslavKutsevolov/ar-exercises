class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_have_men_or_women_apparel

  def must_have_men_or_women_apparel
    if !:mens_apparel
      errors.add(:mens_apparel, "cant be blank")
    end
    if !:womens_apparel
      errors.add(:womens_apparel, "cant be blank")
    end
  end
end
