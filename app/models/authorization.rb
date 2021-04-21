class Authorization < ActiveRecord::Base
  belongs_to :user  # should be there already
  validates :provider, :uid, :presence => true
  
end