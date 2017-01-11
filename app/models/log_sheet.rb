class LogSheet < ActiveRecord::Base
  belongs_to :user

  validates :value, presence: true, numericality: {only_float: true}
  validate :entry_limit, :on => :create  

  scope :today, -> { where(log_day: [Date.today]) }
  scope :last_month, -> { where(log_day: [DateTime.now - 1.month ..DateTime.now]) }
  scope :custom_date, -> (st_date, ed_date){ where(log_day: [st_date ..ed_date]) }

  def entry_limit
   if self.user.log_sheets.today.count >= 4
     errors.add(:base, "Exceeds daily limit")
   end
  end
end
