require 'pry'

class User < ActiveRecord::Base
  has_many :proficiencies 
  has_many :skills, through: :proficiencies

  validates :name, uniqueness: true


  def proficiency_for(skill)
    self[:skill] == skill ? 1 : 0
  end

  def set_proficiency_for(skill, rating)
    proficiency_object = Proficiency.where(:skill_id => skill.id, :user_id => self.id).first
    proficiency_object.rating = rating
  end

end
