class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :tital
      t.string :post_field
      t.belongs_to :user  # add foreign key

      t.timestamps
    end
  end
end
