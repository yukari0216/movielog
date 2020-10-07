class AddImageToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :image, :string
    add_column :directers, :image, :string
  end
end
