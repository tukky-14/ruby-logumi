# テストユーザ
# ------------------------------------
User.create!(
  name: 'test',
  email:'test@sample',
  password:'000000',
  like:'つぶグミ、コグミ',
  introduction: 'たくさん入っているグミが好きです。',
  image:File.open("./public/images/users/test.jpg"),
)
User.create!(
  name:'testman',
  email:'testman@sample',
  password:'000000',
  like:'カンデミーナ、タフグミ',
  introduction: '硬いグミが大好きです！',
  image:File.open("./public/images/users/testman.jpg"),
)
User.create!(
  name:'gummiko',
  email:'gummiko@sample',
  password:'000000',
  like:'フィットチーネグミ',
  introduction: 'グミ美味しい。',
  image:File.open("./public/images/users/gummiko.jpg"),
)

# テストグミ
# ------------------------------------
Gummy.create!(
  name: '果汁グミ',
  content: 'やっぱり果汁グミです！！',
  image:File.open("./public/images/gummies/kaju.png"),
  user_id: 1,
  maker_id: 3,
)