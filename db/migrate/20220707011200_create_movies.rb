class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :date
      t.string :platform
      t.text :review

      t.timestamps
    end
  end
end
