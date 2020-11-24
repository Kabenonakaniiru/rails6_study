# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Classification.create([{ name: '単発' }, { name: '年次' }, { name: '3ヶ月' }, { name: '月次' }, { name: '週次' }, { name: '日次' }])
Areas.create({
  # TODO: 実装
})
