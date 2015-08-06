class Badge < ActiveRecord::Base
  belongs_to :scout
  belongs_to :skill
end
