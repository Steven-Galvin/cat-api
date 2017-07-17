class AddBreedsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :origin
      t.string :common_name
      t.string :characteristics
      t.string :image
      t.string :fun_fact
      t.string :variations
      t.string :history

      t.timestamps
    end
  end
end
