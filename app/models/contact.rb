class Contact < ApplicationRecord
  has_many :contact_groups
  has_many :groups, through: :contact_groups
  def month_day_year
    created_at.strftime("%B %e, %Y")    
  end
end
