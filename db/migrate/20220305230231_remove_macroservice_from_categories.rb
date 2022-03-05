class RemoveMacroserviceFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_reference :categories, :macroservice, null: false, foreign_key: true
  end
end
