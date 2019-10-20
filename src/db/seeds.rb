# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Student.new(user_id: 2, image: 'image_1', first_name: 'first_name_1', last_name: 'last_name_1', first_name_kana: 'first_name_kana_1', last_name_kana: 'last_name_kana_1', gender: 1, age: 12, prefecture: '岩手県', university: 'ハーバード大学', faculty: '国際学部')

firstName = ["結城", "蓮", "雅樹", "由紀", "光希", "葵", "圭", "環", "夏樹", "真央"]
firstNameKana = ["ゆうき", "れん", "まさき", "ゆき", "みつき", "あおい", "けい", "たまき", "なつき", "まお"]
lastName = ["佐藤", "田中", "鈴木", "柏木", "櫻井", "大野", "松本", "飯沼", "瀬川", "新海"]
lastNameKana = ["さとう", "たなか", "すずき", "かしわぎ", "さくらい", "おおの", "まつもと", "いいぬま", "せがわ", "しんかい"]

companyAddress = ["東京都豊島区南長崎5-13-3", "徳島県三好市山城町下川6-2-1", "富山県魚津市木下新5703", "岡山県岡山市四御神5962", "福岡県田川市伊田町1-3-8", "東京都中野区南台7-4-8", "岩手県盛岡市盛岡駅前北通1-2-5 ウインベル・盛岡駅前北通 905号室", "青森県黒石市大川原9-6-8", "愛知県稲沢市横野松前町8-4-7 ドミシール横野松前町 803号室", "宮崎県小林市須木中原8-13-9"]
companyName = ["株式会社Cteam", "株式会社Dteam", "株式会社apple2", "株式会社Bteam", "株式会社Fteam", "株式会社Gteam", "株式会社Hteam", "株式会社Iteam", "株式会社Jteam", "株式会社Kteam"]

selfIntroduction = ["入出金管理業務に携わり、キャッシュフロー管理で昨年は5％の経費削減に寄与し、知識拡充のため簿記資格の取得やスキルアップに努めてきました。入出金やキャッシュフロー管理、グループ会社の経理業務までを行うという貴社の職務は、これまでの経験を最大限に活かし即戦力として貢献していけると思います。またグループ会計というこれまで勉強のみの領域に関しても短期習得し、業務を担当できるよう努めてまいります。",
 "webクリエイターとして、さらにレベルアップを図るべく、昨年「カラーコーディネーター」の資格を取得しました。終業時間が不規則なこともあり、限られた時間の活用法を追求するうち、業務を効率よく進める姿勢にもつながりました。社内からはwebのクリエイティビティはもちろん、「誰よりも段取りが早く的確」との評価を得られるようになったことも大きな収穫です。これまでの経験を生かしつつ、御社が手がける大規模なプロジェクトや新たなサービスを通してwebディレクターとして、さらにキャリアアップしたいと考えております。", 
 "前職では販売の仕事に携わり、人と接する喜びを知りました。今では、新規のお客さまの約1／3が既存客からの紹介であることは、大きな自信につながっています。販売の現場で貴社の商品を扱っており、御社のサポートの丁寧さに感激しました。これまでの販売の経験での強みを十分に生かせるのではないかと思っており、丁寧なサポートをお客さまに提供していく、サポートセンターでの仕事にぜひチャレンジしていきたいと思っています。", 
 "今まで目的を達成するために必要であれば、英語のスキルやデータベースの資格取得などを行い、積極的に習得してきました。未経験のことも身に付けていく自信があります。これまでにない国際的なイベントを開催している貴社で、英語力とこれまでの積極性を持って新たなことを吸収しながら貢献していきたいと思っています。", 
 "相手への配慮、相手の気持ちや立場に立って物事を考える姿勢というものがあると思うので、それにより自分自身がお客さまに対して最大限何が出来て、どのようにすれば満足してもらえるかを常に考え、行動していくことで相手に誠意を伝えていくことが可能だと感じます。", 
 "私は、自社商品を一方的に紹介し、前のめりになって売っていく営業はどちらかというと苦手です。しかし、その分「お客さまが何を欲しているか」を探るべく、「じっくり聞く」営業を心掛けてきました。何気ない会話やちょっとしたお客さまの反応から、商品に興味を持っているかどうかを判断し、少しでも興味を持っていそうなお客さまにはその後のフォローをきめ細かく行うことを徹底してやってきました。", 
 "職場は常に整理整頓されていることで業務効率が上がる、と考えています。用途別に物を配置する、こまめな在庫調整で無駄に物を置かないなど、整理整頓が得意。常にスタッフにロスタイムが生じないような職場環境を提供するために、整理整頓に努めてきました。", 
 "いち早くニーズに気づいて新規提案や受注ができたり、関連会社や他部署の担当者を紹介してもらい新規開拓につながったことで、2年連続対予算120％を達成することができました。御社でも行動力を生かして、営業活動に取り組んで参ります。", 
 "私には社交性があります。御社でも社交性を生かして頑張ります", 
 "パソコンスキルは業務での経験の他に、子供の弁当表の作成など、独自でエクセルやワードを使用しております。"]

sector = ["法律", "フィットネス", "教育", "福祉・介護", "不動産", "サービス", "金融", "電気", "製造", "建設"]
workContent = ["データ入力", "リサーチ", "電話対応", "メール対応", "資料作成", "採用", "SNS運用", "秘書業務", "来訪者対応", "人事"]

field = ["メーカー", "サービス", "小売", "IT", "商社", "金融", "マスコミ", "官公庁・公社・団体"]

(1..10).each do |num|
  Sector.create!(name: sector[num-1])
end

(1..10).each do |num|
  WorkContent.create!(name: workContent[num-1])
end


# 学生アカウント
(1..10).each do |num|
  User.create!(email: "test_student#{num}@gmail.com", password: 'password', password_confirmation: 'password', is_company: false, is_student: true, activated: true, activated_at: Time.zone.now)
  Student.create!(user_id: num, image: "image_#{num}", first_name: firstName[num-1], last_name: lastName[num-1], first_name_kana: firstNameKana[num-1], last_name_kana: lastNameKana[num-1], gender: num%2, age: rand(2), prefecture: "Ateam県", university: 'Bteam大学', faculty: 'Cteam学部')
end

# 会社アカウント
(1..10).each do |num|
  User.create!(email: "test_company#{num+10}@gmail.com", password: 'password', password_confirmation: 'password', is_company: true, is_student: false, activated: true, activated_at: Time.zone.now)
  Company.create!(user_id: num+10, url: "http://test.company#{num}", address: companyAddress[num-1], name: companyName[num-1], image: "image_#{num+10}")
end

# appeal ポイント
(1..30).each do |num|
  Appeal.create!(student_id: num/10+1, content: "私は「縁の下の力持ち」型リーダーです。周りのメンバーが力を最大限発揮できるように、自ら積極的に動くことができます。#{num}")
end

# career 
(1..30).each do |num|
  Career.create!(student_id: num/10+1, name: "カフェ　アルパジョン #{num}号店", start_date: Time.zone.now.ago(3.month), end_date: Time.zone.now, role: "キッチンアルバイト", content: "いっぱい頑張りました.")
end

#　自己紹介
(1..10).each do |num|
  SelfIntroduction.create!(student_id: num, content: selfIntroduction[num-1])
end

# 学生スキル
(1..30).each do |num|
  Skill.create!(student_id:num/10+1, name: "Excel#{num}", level: rand(3), content: "#{num}年使っています")
end

# student_sector
# student_work_content
(1..5).each do |num|
  StudentSector.create!(student_id: 1, sector_id: num)
  StudentWorkContent.create!(student_id: 1, work_content_id: num)
end

# company_sector
# company_work_content
(1..5).each do |num|
  CompanySector.create!(company_id: 1, sector_id: num)
  CompanyWorkContent.create!(company_id: 1, work_content_id: num)
end


(1..10).each do |num|
  Post.create!(company_id: num, tel_number: '090-1115-1999', first_name: '佐々木', last_name: '裕紀', first_name_kana: 'ささき', last_name_kana: 'ゆうき', image: 'image', title: "一緒に働きましょう#{num}", period: '1週間', content: 'content11', salary: '時給換算')
end

# post_sector
# post_work_content
(1..10).each do |num|
  PostSector.create!(post_id: num, sector_id: num)
  PostWorkContent.create!(post_id: num, work_content_id: num)
end

# 企業分野
(1..8).each do |num|
  Field.create!(name: field[num-1])
end

# post_field
(1..8).each do |num|
  PostField.create!(post_id: num, field_id: num)
end

# 会社に対する学生レビュー
(1..5).each do |num|
  Review.create!(company_id: num, title: "雰囲気の良い会社でした", content: "社員の方々の雰囲気がよく、小さいことでも聞くことができる雰囲気でした。自分の成長にも繋がることができました。悩んでいるならここの会社がオススメです。", evaluation: 4)
end

# 会社に対する学生レビュー
(1..5).each do |num|
  Summary.create!(company_id: num, title: "Vision", content: "Follow your heart")
  Summary.create!(company_id: num, title: "Mission", content: "より早く、シンプルに、もっと近くに")
end

# 応募中間テーブル
(1..5).each do |num|
  Apply.create!(post_id: 1, student_id: num)
end


