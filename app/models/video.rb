class Video < ActiveRecord::Base
  has_many :comments, as: :media
  belongs_to :user
end
