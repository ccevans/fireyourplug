class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :link_to

      t.timestamps null: false
    end
  end
end
