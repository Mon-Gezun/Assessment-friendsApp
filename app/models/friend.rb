class Friend < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email, :phone, :twitter
end
