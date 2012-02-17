class Users < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true #Makes sure all useres have a unique name
  validates :password, :presence => true
  validates :name, :presence => true
end
