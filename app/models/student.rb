class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  # def change_status_true
  # 	self.update(active: true
  # end
end