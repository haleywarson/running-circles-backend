class ChangeDataTypeForRunsDate < ActiveRecord::Migration[6.1]
  def change
    change_column :runs, :date, :string
  end
end
