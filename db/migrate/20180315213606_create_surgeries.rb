class CreateSurgeries < ActiveRecord::Migration[5.1]
  def change
    create_table :surgeries do |t|
      t.string :GP_name
      t.string :GP_age
      t.string :GP_gender

      t.timestamps
    end
  end
end
