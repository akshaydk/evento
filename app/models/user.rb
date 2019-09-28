class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :district_admin, :admin]
    after_initialize :set_default_role, :if => :new_record?

    def set_default_role
      self.role ||= :user
    end

  has_many :event_registrations

  def needsEdit?
    if self.full_name.blank? ||  self.rsfi_id.blank? || self.email.blank? || self.phone.blank? || self.blank? ||
        self.address.blank? ||  self.district.blank? || self.pin_code.blank?
      return true
    else
      return false
    end
  end

  def getAgeGroup(year_of_competition)
    candidate_year = self.dob.strftime("%Y")
    age = year_of_competition.to_i - candidate_year.to_i

    if age >= 5 and age < 7
      age_group = '5-7'

    elsif age >= 7 and age < 9
      age_group = '7-9'

    elsif age >= 9 and age < 11
      age_group = '9-11'

    elsif age >= 11 and age < 14
      age_group = '11-14'

    elsif age >= 14 and age < 17
      age_group = '14-17'

    else
      age_group = '17 and above'
    end

    return AgeGroup.where(name: age_group)
  end

end
