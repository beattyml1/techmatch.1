class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :hook
      t.text :description
      t.references :company, index: true
      t.references :user, index: true
      t.string :must_haves
      t.string :love_to_haves
      t.string :nice_to_haves
      t.decimal :max_salary
      t.integer :min_years_experience

      t.timestamps
    end
  end
end
