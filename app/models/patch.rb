class Patch < ActiveRecord::Base
  belongs_to :scout
  belongs_to :rank
end
