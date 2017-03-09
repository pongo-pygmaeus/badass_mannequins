class CreateMannequins < ActiveRecord::Migration[5.0]
  def change
    create_table :mannequins do |t|
      t.string  :name
      t.integer :height

      t.timestamps
    end
  end
end
