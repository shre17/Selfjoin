class Employee < ApplicationRecord
  has_many :subordinates, :class_name => "Employee",
  :foreign_key => :manager_id
  belongs_to :manager, :class_name => "Employee",     
  :foreign_key => :manager_id, optional: true
 
 def self.accounts
     all.map(&:account)
 end

 def self.manager
     all.map(&:manager)
 end

 def self.subordinates
     all.map(&:subordinates)
 end

end
