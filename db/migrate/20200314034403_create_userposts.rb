class CreateUserposts < ActiveRecord::Migration[5.2]
  def change
    create_table :userposts do |t|
      t.integer :uid
      t.integer :isbn
      t.string :impression
      t.boolean :read_flg, default: false

      t.timestamps
    end
  end
end
