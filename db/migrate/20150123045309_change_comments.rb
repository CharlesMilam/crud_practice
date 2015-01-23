class ChangeComments < ActiveRecord::Migration
  def change
    drop_table :comments

    create_table :comments do |t|
      t.string :content
      t.references :media, polymorphic: true  
    end
  end
end
