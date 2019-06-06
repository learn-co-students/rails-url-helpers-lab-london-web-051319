class Student < ActiveRecord::Base
  after_initialize :default_values

  def default_values
    self.active ||= false
  end

  def to_s
    self.first_name + " " + self.last_name
  end

  def active_to_s
    "This student is currently #{self.active ? 'active' : 'inactive'}."
  end

  def toggle_active
    self.update(active: !self.active)
  end
end