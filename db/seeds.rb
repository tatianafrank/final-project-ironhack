# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tag1=Tag.create(name: 'Artsy', keyword: 'galleries', ebcategory: '105')
tag2=Tag.create(name: 'Live music', keyword: 'music', ebcategory: '103')
tag3=Tag.create(name: 'Booze Hound', ebcategory: '110')
tag4=Tag.create(name: 'Sports Fan', keyword: 'sports', ebcategory: '108')
tag5=Tag.create(name: 'Raver', keyword: 'festivals')
tag6=Tag.create(name: 'Chill', keyword: 'food', ebcategory: '110')
tag7=Tag.create(name: 'Outdoorsy', keyword: 'outdoors', ebcategory: '109')

# tag1=Tag.find_by(name: 'Artsy')
# tag2=Tag.find_by(name: 'Live music')
# tag3=Tag.find_by(name: 'Booze Hound')
# tag4=Tag.find_by(name: 'Sports Fan')
# tag5=Tag.find_by(name: 'Raver')
# tag6=Tag.find_by(name: 'Chill')
# tag7=Tag.find_by(name: 'Outdoorsy')



# {description: "sdlfsdfksdfksdjlfkj", start_time: "2015-05-16 12:00:00", end_time: "2015-05-16 14:00:00", title: "Blah Blah Blah", location: "Ground Floor Gallery"}
