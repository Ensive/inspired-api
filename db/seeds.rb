# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.delete_all
AdminUser.create!(email: 'antonge92@gmail.com', password: '1qw23e', password_confirmation: '1qw23e')

Product.delete_all

products_list = [
    { sku: '23Hdj41dnc72ldm', title: 'Бирюзовое Платье', description: 'Good one to wear at celebrations', in_stock: 2, available: true, new: false, image: 'sea-dress.jpg', price: 900, discount_available: true, discount: 25 },
    { sku: '23Hdj41dnc72ldm', title: 'Синий Свитер', description: 'Nice stylish sweater for cold autumn', in_stock: 4, available: true, new: true, image: 'blue-sweater-with-flowers.jpg', price: 600, discount_available: false, discount: 0 },
    { sku: '23Hdj41dnc72ldm', title: 'Светлое Пальто', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque, maxime velit? Dolore earum excepturi, nihil quas recusandae sint vitae. Provident, sint soluta! Aspernatur delectus deserunt dignissimos esse est, facilis illo illum in perferendis quis rem totam velit veniam? Animi aspernatur dicta quam quis quo! Architecto consequuntur distinctio dolor eveniet fuga incidunt libero, maiores, neque possimus sed, similique velit veniam voluptates?', in_stock: 2, available: true, new: true, image: 'light-blue-pink-coat.jpg', price: 1400, discount_available: false, discount: 0 },
    { sku: '23Hdj41dnc72ldm', title: 'Розовый Гольф', description: 'Lorem ipsum dolor sit amet.', in_stock: 5, available: true, new: false, image: 'golf-pink.jpg', price: 400, discount_available: true, discount: 20 },
    { sku: '23Hdj41dnc72ldm', title: 'Синее платье в клетку', description: 'Lorem ipsum dolor sit amet.', in_stock: 1, available: true, new: true, image: 'blue-dress.jpg', price: 1200, discount_available: false, discount: 0 },
    { sku: '23Hdj41dnc72ldm', title: 'Белая блузка', description: 'Супер пупер блузка', in_stock: 3, available: true, new: false, image: 'pink-skirt.jpg', price: 450, discount_available: true, discount: 10 }
]
products_list.each do |product|
  Product.create!(
    sku: product[:sku],
    title: product[:title],
    description: product[:description],
    in_stock: product[:in_stock],
    available: product[:available],
    new: product[:new],
    image: product[:image],
    discount: product[:discount],
    discount_available: product[:discount_available],
    price: product[:price]
  )
end
