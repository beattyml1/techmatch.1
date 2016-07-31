class AddYearsExperienceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :years_experience, :integer
  end
end
