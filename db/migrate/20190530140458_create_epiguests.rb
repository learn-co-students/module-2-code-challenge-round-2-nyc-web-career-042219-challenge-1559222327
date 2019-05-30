class CreateEpiguests < ActiveRecord::Migration[5.1]
  def change
    create_table :epiguests do |t|
      t.integer :guest_id
      t.integer :episode_id
      t.integer :rating
      t.timestamps
    end
  end
end
