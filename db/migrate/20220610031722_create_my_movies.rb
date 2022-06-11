class CreateMyMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :my_movies do |t|
      t.belongs_to :user
      t.integer :movie_identification 
      
      t.timestamps
    end
  end
end
