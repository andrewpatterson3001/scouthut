class Rank < ActiveRecord::Base
  belongs_to :scout
  has_many :patches
  has_many :scouts, through: :patches
end
