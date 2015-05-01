# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tag1=Tag.create(name: 'Artsy')
tag2=Tag.create(name: 'Live music')
tag3=Tag.create(name: 'Booze Hound')
tag4=Tag.create(name: 'Sports Fan')
tag5=Tag.create(name: 'Raver')
tag6=Tag.create(name: 'Chill')
tag7=Tag.create(name: 'Outdoorsy')

marlbGal=Event.create(title:'Marlborough Gallery Presents Emerging Artists Expo', description: 'art exhibit', location: '545 W 25th St New York, NY 10001', start_time: 'Fri, 8 May 2015 19:00:00', end_time: 'Fri, 8 May 2015 21:00:00')
marlbGal.tags.push(tag1)
jazzPar=Event.create(title:'Jazz in the Park', description: 'Swing to some jazz in the park under the moon', location: 'Central Park New York, NY 10001', start_time: 'Fri, 8 May 2015 21:00:00', end_time: 'Fri, 8 May 2015 22:00:00')
jazzPar.tags.push(tag7)
jazzPar.tags.push(tag2)
djKas=Event.create(title:'DJ Kaskade at Roseland Ballroom', description: 'Rave to your favorite Trance DJ', location: 'Roseland Ballroom New York, NY 10001', start_time: 'Sat, 9 May 2015 19:00:00', end_time: 'Sat, 9 May 2015 21:00:00')
djKas.tags.push(tag5)
yanks=Event.create(title:'Yankees vs Orioles', description: 'Your favorite baseball team', location: 'Yankee Stadium St New York, NY 10001', start_time: 'Sat, 9 May 2015 21:30:00', end_time: 'Sun, 10 May 2015 1:00:00')
yanks.tags.push(tag4)
surfStev=Event.create(title:'Sufjan Stevens Concert in Brooklyn', description: 'Sufjan is a singer-songwriter', location: '1027 Flatbush Ave Brooklyn, NY 11226', start_time: 'Sun, 10 May 2015 2:00:00', end_time: 'Sun, 10 May 2015 4:00:00')
surfStev.tags.push(tag2)
sohoHous=Event.create(title:'Soho House Roof Lounge', description: 'Lounge with some drinks and a view', location: 'Soho House New York, NY 10001', start_time: 'Sun, 10 May 2015 19:00:00', end_time: 'Sun, 10 May 2015 21:00:00')
sohoHous.tags.push(tag6)
sohoHous.tags.push(tag3)
midGolf=Event.create(title:'Midnight Mini-Golf', description: 'Hit the grass at midnight and swing your stress away', location: 'Gowanus Golf Club Brooklyn, NY 11226', start_time: 'Mon, 11 May 2015 24:00:00', end_time: 'Mon, 11 May 2015 2:00:00')
midGolf.tags.push(tag7)
