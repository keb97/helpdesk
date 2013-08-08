class SolutionstoTextareas < ActiveRecord::Migration
  def change
    remove_column :tickets, :solution
    add_column :tickets, :solution, :text
  end
end
