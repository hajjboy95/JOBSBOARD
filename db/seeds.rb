# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
include Faker

category_id = [1,2,3,4]
count = 0
Job.all.each do |job|

    job.category_id = category_id.sample
    job.save!

    puts job.category_id
  count += 1

end

puts count