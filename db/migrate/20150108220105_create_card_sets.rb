class CreateCardSets < ActiveRecord::Migration
  def change
    create_table :card_sets do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
