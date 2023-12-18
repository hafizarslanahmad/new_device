class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.belongs_to :user  #add foreign key
      t.belongs_to :post  #add foreign key

      t.timestamps
    end
  end
end
