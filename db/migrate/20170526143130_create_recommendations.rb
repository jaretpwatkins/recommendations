class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|
      t.string :address
      t.string :name
      t.string :neighborhood
      t.integer :user_id

      t.timestamps

    end
  end
end
