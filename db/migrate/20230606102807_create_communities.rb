class CreateCommunities < ActiveRecord::Migration[7.0]
  def change
    create_table :communities do |t|
      t.string :title
      t.text :description
      t.string :category
      t.references :user, null: false, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
