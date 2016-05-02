class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.references :user, :post, index: true, null: false

      t.timestamps null: false
    end
  end
end
