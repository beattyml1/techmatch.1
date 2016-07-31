class AddMinSalaryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :min_salary, :decimal
  end
end
