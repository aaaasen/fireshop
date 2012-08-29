class AddCategoryToAffiliates < ActiveRecord::Migration
  def change
    add_column :affiliates, :category, :string
  end
end
