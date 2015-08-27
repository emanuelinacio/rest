class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :pass
      t.string :device

      t.timestamps
    end
  end
end
