class Photo < ActiveRecord::Base
  has_many :comments
  paginates_per 3
end
