class CreateWigs < ActiveRecord::Migration[5.0]

  def change

    create_table :wigs do |t|
      t.string     :name
      t.string     :style
      t.string     :color
      t.integer    :length
      t.references :mannequin

      t.timestamps
    end


  end
end
