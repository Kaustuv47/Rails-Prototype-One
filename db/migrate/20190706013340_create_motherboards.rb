class CreateMotherboards < ActiveRecord::Migration[6.0]
  def change
    create_table :motherboards do |t|
      t.string :ModelName
      t.string :Manufacturer
      t.string :RamFrequency
      t.string :RamGeneration

      t.timestamps
    end
  end
end
