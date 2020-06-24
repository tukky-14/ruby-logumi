# テストユーザ
# ------------------------------------
User.create!(
  name: 'test',
  email: 'test@sample',
  password: '000000',
  like: 'つぶグミ、コグミ',
  introduction: 'たくさん入っているグミが好きです。',
  image: File.open("./public/images/users/test.jpg")
)
User.create!(
  name: 'testman',
  email: 'testman@sample',
  password: '000000',
  like: 'カンデミーナ、タフグミ',
  introduction: '硬いグミが大好きです！',
  image: File.open("./public/images/users/testman.jpg")
)
User.create!(
  name: 'gummiko',
  email: 'gummiko@sample',
  password: '000000',
  like: 'フィットチーネグミ',
  introduction: 'グミ美味しい。',
  image: File.open("./public/images/users/gummiko.jpg")
)

# テストグミ
# ------------------------------------
Gummy.create!(
  name: '果汁グミ',
  content: 'やっぱり果汁グミです！！',
  image: File.open("./public/images/gummies/kaju.png"),
  user_id: 1,
  maker_id: 3
)
Gummy.create!(
  name: 'コグミ',
  content: 'たくさん入ってたくさんおいしい！',
  image: File.open("./public/images/gummies/kogumi.jpeg"),
  user_id: 2,
  maker_id: 1
)
Gummy.create!(
  name: 'つぶグミ',
  content: 'コスパがいいです！',
  image: File.open("./public/images/gummies/tsubunatsu.jpg"),
  user_id: 3,
  maker_id: 7
)
Gummy.create!(
  name: 'ASOBONグミ',
  content: '楽しもううみの世界！',
  image: File.open("./public/images/gummies/asobon.png"),
  user_id: 1,
  maker_id: 2
)
Gummy.create!(
  name: 'コロロ',
  content: 'なんでそんなにドラッグストアに多いんですか？？',
  image: File.open("./public/images/gummies/cororo.png"),
  user_id: 2,
  maker_id: 1
)
Gummy.create!(
  name: 'フィットチーネグミ',
  content: 'この弾む食感がたまりません！',
  image: File.open("./public/images/gummies/fit.png"),
  user_id: 1,
  maker_id: 4
)
Gummy.create!(
  name: 'ハリボグミ',
  content: '海外のグミといえばハリボです！',
  image: File.open("./public/images/gummies/haribo.png"),
  user_id: 3,
  maker_id: 13
)
Gummy.create!(
  name: 'カンデミーナ',
  content: '本当の「かたくてうまい」はこのグミから教わりました',
  image: File.open("./public/images/gummies/kande.png"),
  user_id: 3,
  maker_id: 2
)
Gummy.create!(
  name: 'ペタグーグミ',
  content: '量は少ないけれど、とまらない不思議なおいしさ！',
  image: File.open("./public/images/gummies/peta.png"),
  user_id: 2,
  maker_id: 9
)
Gummy.create!(
  name: 'ピュレグミ',
  content: 'お菓子売り場で見かけないときはないほど有名！美味しいです！',
  image: File.open("./public/images/gummies/pure.png"),
  user_id: 2,
  maker_id: 2
)
Gummy.create!(
  name: 'さけるグミ',
  content: '他のグミとは違った楽しみ方ができる、楽しいグミ。',
  image: File.open("./public/images/gummies/sakeru.png"),
  user_id: 1,
  maker_id: 1
)
