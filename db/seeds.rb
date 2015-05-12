# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# tag1=Tag.create(name: 'Artsy', keyword: 'galleries')
# tag2=Tag.create(name: 'Live music', keyword: 'music')
# tag3=Tag.create(name: 'Booze Hound')
# tag4=Tag.create(name: 'Sports Fan', keyword: 'sports')
# tag5=Tag.create(name: 'Raver', keyword: 'festivals')
# tag6=Tag.create(name: 'Chill', keyword: 'food')
# tag7=Tag.create(name: 'Outdoorsy', keyword: 'outdoors')

tag1=Tag.find_by(name: 'Artsy')
tag2=Tag.find_by(name: 'Live music')
tag3=Tag.find_by(name: 'Booze Hound')
tag4=Tag.find_by(name: 'Sports Fan')
tag5=Tag.find_by(name: 'Raver')
tag6=Tag.find_by(name: 'Chill')
tag7=Tag.find_by(name: 'Outdoorsy')

marlbGal=Event.create(title:'Marlborough Gallery Presents Emerging Artists Expo', description: 'art exhibit', location: '545 W 25th St New York, NY 10001', start_time: 'Fri, 15 May 2015 19:00:00 -0400', end_time: 'Fri, 15 May 2015 21:00:00 -0400')
marlbGal.tags.push(tag1)

happyHr=Event.create(title:'Happy hour at McGoverns', description: 'Free drinks for ladies and half off for guys', location: 'McGoverns St New York, NY 10001', start_time: 'Fri, 15 May 2015 21:00:00 -0400', end_time: 'Fri, 15 May 2015 23:00:00 -0400')
happyHr.tags.push(tag3)
happyHr.tags.push(tag6)

yanks=Event.create(title:'Yankees VS Cubs at Yankee Stadium', description: 'See the Yankees play the Cubs this Friday', location: 'McGoverns St New York, NY 10001', start_time: 'Fri, 15 May 2015 14:00:00 -0400', end_time: 'Fri, 15 May 2015 17:00:00 -0400')
yanks.tags.push(tag4)

banjo=Event.create(title:'The Black Keys at Madison Square Garden', description: 'The Black Keys at Madison Square Garden this Saturday', location: 'Madison Square Garden New York, NY 10001', start_time: 'Sat, 16 May 2015 16:00:00 -0400', end_time: 'Fri, 15 May 2015 18:00:00 -0400')
banjo.tags.push(tag2)

gans=Event.create(title:'Gansevoort Rooftop Lounge', description: 'Join us for mimosas in the shade while DJ Kaz spins some chill afternoon beats', location: 'Gansevoort New York, NY 10001', start_time: 'Sat, 16 May 2015 19:30:00 -0400', end_time: 'Sat, 16 May 2015 21:30:00 -0400')
gans.tags.push(tag7)
gans.tags.push(tag3)

rave=Event.create(title:'Late Night Rave', description: 'Dont stop till the sun rises!', location: 'Ravetown New York, NY 10001', start_time: 'Sat, 16 May 2015 22:00:00 -0400', end_time: 'Sun, 17 May 2015 2:00:00 -0400')
rave.tags.push(tag5)
rave.tags.push(tag3)
