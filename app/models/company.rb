class Company < ApplicationRecord
  validates :name, :url, :username, :password, :description, presence: :true
end
