class CreateGps < ActiveRecord::Migration[5.1]
  def change
    create_table :gps do |t|
      t.string :name
      t.string :appointment

      t.timestamps
    end
  end
end
