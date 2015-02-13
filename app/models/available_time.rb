class AvailableTime < ActiveRecord::Base
  UPDATABLE_ATTRS = [:start_at_unix, :end_at_unix]

  belongs_to :user
  validates :user_id,  presence: true

  def start_at_unix= unix_time
    self.start_at = Time.at unix_time.to_i
  end
  def end_at_unix= unix_time
    self.end_at = Time.at unix_time.to_i
  end
end
