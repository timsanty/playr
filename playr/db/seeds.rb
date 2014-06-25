# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

players = Player.create([{ name: 'bob', height: '6-0', weight: '150', gpa: '3.5', hand: 'left', position: 'libero' }])

coaches = Coach.create([{ name: 'Atlee', school: 'Menlo School for gifted youngsters', title: 'Head Coach', email: 'atlee@menlo.com' }])
