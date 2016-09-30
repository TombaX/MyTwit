class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps null: false
    end
    #извлечение всех микросообщений в порядке обратном их созданию
    add_index :microposts, [:user_id, :created_at]
  end
end
