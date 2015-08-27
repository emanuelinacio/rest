class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.references :users, index: true
      t.datetime :date_tracker
      t.string :lat_tracker
      t.string :long_tracker

      t.timestamps
    end
  end
end
