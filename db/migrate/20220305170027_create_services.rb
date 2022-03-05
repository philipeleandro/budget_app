class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :code
      t.string :name
      t.string :un
      t.float :value

      t.timestamps
    end
  end
end
