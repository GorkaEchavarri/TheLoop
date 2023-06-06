class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :is_flag, default: false

      t.timestamps
    end
  end
end
