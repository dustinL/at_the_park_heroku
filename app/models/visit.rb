class Visit < ActiveRecord::Base

belongs_to :park
belongs_to :user

def self.visits(user)
  where("user_id = ?", user)
end

end
