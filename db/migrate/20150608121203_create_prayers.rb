class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.text :prayer_request

      t.timestamps
    end
  end
end
