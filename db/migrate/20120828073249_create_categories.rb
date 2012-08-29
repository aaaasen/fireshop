class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :id
      t.string :merchants

      t.timestamps
    end
  end
end
