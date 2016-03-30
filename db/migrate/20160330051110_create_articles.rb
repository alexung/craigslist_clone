class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.belongs_to :category
      t.string :title
      t.text :description
      t.float :price
      t.string :address

      t.timestamps
    end
  end
end
