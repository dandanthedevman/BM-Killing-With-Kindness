class HateGroup < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :name, :type, :description, :email
end
