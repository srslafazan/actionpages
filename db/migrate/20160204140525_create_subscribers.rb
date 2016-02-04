class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string  :subscriberable_type
   	  t.integer :subscriberable_id
      t.integer :referrer_id
      t.integer :referral_code
      t.integer :page_id

      t.timestamps null: false
    end
  end
end
