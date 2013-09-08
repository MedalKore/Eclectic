class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
		t.string :username
<<<<<<< HEAD
		t.string :password
=======
		t.string :password_digest
>>>>>>> Reinitialized repo because removing a bunch of large old files is tedious.
		t.string :email

      t.timestamps
    end
  end
end
