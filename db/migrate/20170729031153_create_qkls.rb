class CreateQkls < ActiveRecord::Migration[5.0]
  def change
    create_table :qkls do |t|
      t.string :xuexi
      t.text :jianxing

      t.timestamps
    end
  end
end
