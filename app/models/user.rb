class User < ActiveRecord::Base
  has_many :proficiencies 
  has_many :skills, through: :proficiencies

  validates :name, uniqueness: true


  def proficiency_for(skill)
        
    
  end

end
