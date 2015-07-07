class AddEndDateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :end_date, :date
  end
end
