class CreateReferralPages < ActiveRecord::Migration
  def change
    create_table :referral_pages do |t|
      t.string :navcolor
      t.string :rheadline
      t.string :rheadlinecolor
      t.string :rbackgroundcolor
      t.string :rboxcolor
      t.string :rcountcolor
      t.string :rhow
      t.string :rhowcolor
      t.string :rightheadline
      t.string :rightsub
      t.string :rightcolor
      t.string :bottomsub
      t.string :reward1
      t.string :reward2
      t.string :reward3
      t.string :reward4

      t.timestamps null: false
    end
  end
end
