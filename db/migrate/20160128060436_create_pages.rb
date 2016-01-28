class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :headline
      t.string :color
      t.string :buttoncolor
      t.string :buttontext

      t.timestamps null: false
    end
  end
end
