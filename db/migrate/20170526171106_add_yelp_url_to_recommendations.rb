class AddYelpUrlToRecommendations < ActiveRecord::Migration[5.0]
  def change
    add_column :recommendations, :yelp_url, :string
  end
end
