class Company < ApplicationRecord
  has_many :projects
  validates :name, :url, :username, :password, :description, presence: :true
end
