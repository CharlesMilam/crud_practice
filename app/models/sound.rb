class Sound < ActiveRecord::Base
  had_many :comments as: :media
end
