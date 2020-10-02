class AddDirecterIdToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :directer_id, :integer
  end
end
