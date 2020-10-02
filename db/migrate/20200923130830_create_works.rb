class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string "title"
      t.string "year"
      t.string "acter"
      t.text "about"
      t.timestamps
    end
  end
end
