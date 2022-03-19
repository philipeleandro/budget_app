require 'csv'

namespace :setup_category do
  desc "Insert Category names"
  task import: :environment do
    CSV.foreach('files/test.csv') do |row|
      if row[1] == nil
        Category.create!(
          name: row[0]
        )
      end
    end
  end
end
