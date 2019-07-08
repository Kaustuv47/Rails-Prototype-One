class CreateRams < ActiveRecord::Migration[6.0]
  def change
    create_table :rams do |t|
      t.string :ModelName
      t.string :Manufacturer
      t.string :RamFrequency
      t.string :RamGeneration
      t.string :RamSize

      t.timestamps
    end
  end
end
