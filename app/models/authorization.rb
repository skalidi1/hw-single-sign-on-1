class Authorization < ActiveRecord::Base
  belongs_to :user  # should be there already
  validates :provider, :uid, :presence => true
  
  def self.create_with_omniauth(auth, user)
    user.authorizations.create!(provider: auth["provider"], uid: auth["uid"])
  end
  
end