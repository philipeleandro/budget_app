class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :code
      t.string :name
      t.string :un
      t.float :value
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
