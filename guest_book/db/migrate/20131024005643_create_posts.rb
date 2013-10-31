class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :fname
      t.string :lname
      t.text :address
      t.string :email
      t.string :contact_no

      t.timestamps
    end
  end
end
