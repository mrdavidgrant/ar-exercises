class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true
  validate :hourly
  validates :store, presence: true


  def hourly
    if hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, 'not within wage guidelines')
    end
  end

end
