class Scout < User
  has_many :badges
  has_many :skills, through: :badges
  has_many :patches
  has_many :ranks, through: :patches
end