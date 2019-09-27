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

end
