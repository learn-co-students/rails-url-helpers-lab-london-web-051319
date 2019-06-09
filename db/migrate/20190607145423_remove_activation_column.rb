class RemoveActivationColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :activation
  end
end
