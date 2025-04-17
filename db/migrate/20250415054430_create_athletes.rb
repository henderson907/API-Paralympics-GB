class CreateAthletes < ActiveRecord::Migration[7.2]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :classification
      t.string :image_url
      t.references :sport, null: false, foreign_key: true
    end
  end
end
