# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tag1=Tag.create(name: 'Artsy', keyword: 'galleries')
tag2=Tag.create(name: 'Live music', keyword: 'music')
tag3=Tag.create(name: 'Booze Hound')
tag4=Tag.create(name: 'Sports Fan', keyword: 'sports')
tag5=Tag.create(name: 'Raver', keyword: 'festivals')
tag6=Tag.create(name: 'Chill', keyword: 'food')
tag7=Tag.create(name: 'Outdoorsy', keyword: 'outdoors')

