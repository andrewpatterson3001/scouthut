class Skill < ActiveRecord::Base
  belongs_to :scoutmaster
  has_many :badges
  has_many :scouts, through: :badges
end
