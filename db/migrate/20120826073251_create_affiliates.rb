class CreateAffiliates < ActiveRecord::Migration
  def change
    create_table :affiliates do |t|
      t.string :name
      t.string :url
      t.string :logosrc
      t.string :alt
      t.float :commission
			t.string :category

      t.timestamps
    end
  end
end
