class Account < ActiveRecord::Base
 
  belongs_to :users
  
  validate :validate_gender_field
  validate :validate_age_field
  
  def validate_gender_field
     if gender != "male" and gender !="female" and gender != "N/A"
	    errors.add(:gender, "gender fields have invalid value")
	 end
  end
  
  def validate_age_field
     if age < 20 or age > 100
        errors.add(:age, "age fields have invalid value")
	 end
  end

end
