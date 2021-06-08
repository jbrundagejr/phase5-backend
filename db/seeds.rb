User.destroy_all
Shop.destroy_all
Review.destroy_all
Flavor.destroy_all
Message.destroy_all
Conversation.destroy_all

puts "Creating Users..."

20.times do |i|
  User.create(username: Faker::Name.name,
              email: Faker::Internet.email,
              password: "123", 
              profile_img: "https://i.pravatar.cc/150?img=#{i+1}")
end

puts "Creating Ice Cream Shops..."

shop1 = Shop.create(name: "Ample Hills Creamery", 
                    image_url: "https://i.imgur.com/aqMxpFK.png",
                    website: "https://www.amplehills.com/",
                    plus_code: "M2HJ+CP Brooklyn, New York")
shop2 = Shop.create(name: "Big Gay Ice Cream", 
                    image_url: "https://i.imgur.com/wFI5B9M.png",
                    website: "https://www.biggayicecream.com/",
                    plus_code: "PX4W+VQ New York")
shop3 = Shop.create(name: "The Good Batch", 
                    image_url: "https://i.imgur.com/F0fxyN8.jpg",
                    website: "https://thegoodbatch.com/",
                    plus_code: "M2MP+4Q Brooklyn, New York")
shop4 = Shop.create(name: "Van Leeuwen", 
                    image_url: "https://i.imgur.com/CrQXH2O.jpg",
                    website: "https://vanleeuwenicecream.com/",
                    plus_code: "P29Q+97 New York")
shop5 = Shop.create(name: "Oddfellows Ice Cream Company", 
                    image_url: "https://i.imgur.com/G1A7jQn.png",
                    website: "https://www.oddfellowsnyc.com/",
                    plus_code: "P235+73 Brooklyn, New York")
shop6 = Shop.create(name: "Malai Ice Cream", 
                    image_url: "https://i.imgur.com/i0nBrwz.png",
                    website: "https://www.malai.co/",
                    plus_code: "M2M4+3M Brooklyn, New York")

puts "Creating Reviews..."

10.times do
  Review.create(content: Faker::Lorem.paragraph(sentence_count: 2), 
                rating: rand(1..5),
                user: User.all.sample,
                shop: Shop.all.sample)
end

puts "Creating Ice Cream Flavors..."

Flavor.create(name: "Ooey Gooey Butter Cake",
                      description: "Vanilla ice cream mixed with gobs of St. Louis-style ooey gooey butter cake.",
                      image_url: "https://i.imgur.com/ElfXaYw.jpg",
                      shop_id: shop1.id)
Flavor.create(name: "Nonna D's Oatmeal Lace",
                      description: "Cinnamon ice cream with crispy oatmeal lace cookies.",
                      image_url: "https://i.imgur.com/UeZ0srW.jpg",
                      shop_id: shop1.id)
Flavor.create(name: "Strawberries & Cream",
                      description: "Strawberry ice cream with fresh strawberries.",
                      image_url: "https://i.imgur.com/vAnRFkL.png",
                      shop_id: shop1.id)
Flavor.create(name: "Peppermint Pattie",
                      description: "Peppermint ice cream with dark chocolate-covered peppermint patties and swirls of peppermint-infused fudge.",
                      image_url: "https://i.imgur.com/dFkyc3y.jpg",
                      shop_id: shop1.id)
Flavor.create(name: "Shortberry Strawcake",
                      description: "A sundae of vanilla ice cream, our homemade strawberry sauce, crumbled Nilla wafers cookies & whipped cream.",
                      image_url: "https://i.imgur.com/1k5Fbgh.png",
                      shop_id: shop2.id)
Flavor.create(name: "Dorothy",
                      description: "Vanilla ice cream cone injected with dulce de leche, then rolled in ground Nilla wafer cookies.",
                      image_url: "https://i.imgur.com/FS6bD0G.png",
                      shop_id: shop2.id)
Flavor.create(name: "Rocky Roadhouse",
                      description: "Chocolate ice cream cone rolled in our Rocky Roadhouse topping, a blend of mini marshmallows, toasted almonds & chocolate bits.",
                      image_url: "https://i.imgur.com/tU9VsqK.png",
                      shop_id: shop2.id)
Flavor.create(name: "Mermaid",
                      description: "An ice cream sundae inspired by our favorite Key lime pie: vanilla ice cream, Key lime curd, pie crust crumble & whipped cream.",
                      image_url: "https://i.imgur.com/52xOBQT.png",
                      shop_id: shop2.id)
Flavor.create(name: "Minty Cookie",
                      description: "Mint ice cream, chewy chocolate and sandwich cookies.",
                      image_url: "https://i.imgur.com/39yuMOA.png",
                      shop_id: shop3.id)
Flavor.create(name: "Peanut Butter Fully Loaded",
                      description: "Chocolate cookie, peanut butter ice cream, fudge buttercream with toasted coconut and pretzel crumb.",
                      image_url: "https://i.imgur.com/gYgRYJG.png",
                      shop_id: shop3.id)
Flavor.create(name: "Strawberry Crumb",
                      description: "Strawberry ice cream, brown butter cookie crumb with strawberry sauce.",
                      image_url: "https://i.imgur.com/gZvx0FU.png",
                      shop_id: shop3.id)
Flavor.create(name: "Caramel Brownie",
                      description: "Caramel ice cream with chewy brownies and a caramel ribbon.",
                      image_url: "https://i.imgur.com/dlgVewi.png",
                      shop_id: shop3.id)
Flavor.create(name: "Carrot Cake Doughnut",
                      description: "Sweet cream cheese ice cream with candied praline pecans and chunks of housemade spiced carrot cake donuts.",
                      image_url: "https://i.imgur.com/4VzgbUZ.png",
                      shop_id: shop4.id)
Flavor.create(name: "Dule de Leche & Shortbread Cookie",
                      description: "Dulce de leche ice cream with tons of shortbread cookies.",
                      image_url: "https://i.imgur.com/3Ve3wie.png",
                      shop_id: shop4.id)
Flavor.create(name: "Mocha Cookie Crumble",
                      description: "Colombian coffee ice cream with dark chocolate fudge and spiced cookie crumbles.",
                      image_url: "https://i.imgur.com/Wq54RfS.png",
                      shop_id: shop4.id)
Flavor.create(name: "Peanut Butter Brownie Chip",
                      description: "Peanut butter ice cream with chewy brownies, swirls of peanut butter and dark chocolate chips.",
                      image_url: "https://i.imgur.com/yQ8tXPn.png",
                      shop_id: shop4.id)
Flavor.create(name: "Almond Praline and Cherry",
                      description: "Sweet almond base with housemade almond praline and tart cherry jam.",
                      image_url: "https://i.imgur.com/UBGggRb.jpg",
                      shop_id: shop5.id)
Flavor.create(name: "Brooklyn Blackout",
                      description: "Dark chocolate ice cream with chocolate cake and chocolate pudding swirl.",
                      image_url: "https://i.imgur.com/C0hZrr9.jpg",
                      shop_id: shop5.id)
Flavor.create(name: "Coffee Crunch",
                      description: "Coffee ice cream with almonds.",
                      image_url: "https://i.imgur.com/YTtYSQM.jpg",
                      shop_id: shop5.id)
Flavor.create(name: "Cookies and Cream",
                      description: "Sweet cream base with chunks of chocolate cookies.",
                      image_url: "https://i.imgur.com/ztuxofC.png",
                      shop_id: shop5.id)
Flavor.create(name: "Pumpkin Garam Masala Crumble",
                      description: "Pumpkin ice cream with sweet and savory spices of garam masala and smoky black cardamom graham cracker.",
                      image_url: "https://i.imgur.com/uE6bi7p.png",
                      shop_id: shop6.id)
Flavor.create(name: "Rose with Cinnamon Roasted Almonds",
                      description: "Rose ice cream with cinnamon roasted almonds.",
                      image_url: "https://i.imgur.com/CVtbGGJ.jpg",
                      shop_id: shop6.id)
Flavor.create(name: "Confetti Sweet Milk",
                      description: "Sweet milk ice cream with candied fennel seeds.",
                      image_url: "https://i.imgur.com/eJizT6C.png",
                      shop_id: shop6.id)
Flavor.create(name: "Red Chili Chocolate",
                      description: "Rich chocolate ice cream with heirloom chilies.",
                      image_url: "https://i.imgur.com/eODZA92.png",
                      shop_id: shop6.id)

puts "Creating Conversations..."

10.times do
  sender_id = User.all.sample.id
  if sender_id == User.last.id
    sender_id = User.last.id - 2
  end
  Conversation.create(sender_id: sender_id, recipient_id: sender_id + 1)
end

puts "Creating Messages..."

10.times do
  Message.create(content: Faker::Lorem.sentence,
                 user_id: Conversation.sender_ids.sample,
                 conversation: Conversation.all.sample)
end

10.times do
  Message.create(content: Faker::Lorem.sentence,
                 user_id: Conversation.recipient_ids.sample,
                 conversation: Conversation.all.sample)
end

puts "Done!"