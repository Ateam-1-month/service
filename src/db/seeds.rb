# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.new(user_id: 2, image: 'image_1', first_name: 'first_name_1', last_name: 'last_name_1', first_name_kana: 'first_name_kana_1', last_name_kana: 'last_name_kana_1', gender: 1, age: 12, prefecture: '岩手県', university: 'ハーバード大学', faculty: '国際学部')

(1..50).each do |num|
  Sector.create!(name: "業種#{num}")
end

(1..50).each do |num|
  WorkContent.create!(name: "業務内容#{num}")
end

# Post.create!(company_id: 1, tel_number: '090-6453-1999', first_name: '佐藤', last_name: '裕紀', first_name_kana: 'さとう', last_name_kana: 'ゆうき', image: 'image', title: '募集タイトル', period: '1週間', content: 'content11', salary: '時給換算')
