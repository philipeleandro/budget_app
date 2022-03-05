class DropMacroservice < ActiveRecord::Migration[7.0]
  def change
    drop_table :macroservices
  end
end