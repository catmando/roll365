class Certificate < ApplicationRecord

 
  has_many :certs,
           as: :certifiable,
           dependent: :destroy

    
  validates :name,          :presence => true
  validates :active,        :presence => true
  
  def display_name
    self.name
  end


end
