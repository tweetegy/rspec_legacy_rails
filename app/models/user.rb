class User < ActiveRecord::Base
  belongs_to :group

  validates_presence_of :first_name
  validates_presence_of :last_name

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
