class CreateEkbdps < ActiveRecord::Migration[5.2]
  def change
    create_table :ekbdps do |t|
      t.text :item
      t.timestamps
    end
    add_index :user_id
  end
end
