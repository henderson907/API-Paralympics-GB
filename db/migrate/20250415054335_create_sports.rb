class CreateSports < ActiveRecord::Migration[7.2]
  def change
    create_table :sports do |t|
      t.string :name
    end
  end
end
