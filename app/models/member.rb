class Member < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  scope :members, -> { where("membership_status is not null") }
#- skills (tag list)
#- projects_users
#- cc# / stripe bi
end
