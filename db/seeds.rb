User.create!([
  {name: "Mo", password_digest: "$2a$10$PvZtW.sEd1CD7f/tnedXMeoLWHEBpZhJBgcorLhmWToATqNAkHkyq", address: "123 Sunny Lane, Broomfield, CO 80023", email: "mo@momoney.com", bio: "I do not have one, I've been locked up in the pen for the last 10 years for my hacktavisim. I'm now in a halfway house starting over again, out to help the WORLD...one ass at a time!", avatar: "https://i.imgflip.com/k2gux.jpg", product_id: 1, conversation_id: 1},
  {name: "Callaway", password_digest: "$2a$10$5441lE9vgkglHeroKqKh5.d2dHQHlgHehUbfG2cy7yrpxi4glM4.O", address: "123 Sunny Lane, Broomfield, CO 80023", email: "c@momoney.com", bio: "I've been busy cleaning up after Mo as usual.", avatar: "http://www.fanboy.com/wp-content/uploads/2011/12/Children-of-Mandalore-Art-Print-2.jpeg", product_id: 2, conversation_id: 2},
  {name: "Creator", password_digest: "$2a$10$UViRgM1pB9sA3sCQwivi6ub8/UROJWiY1ny1qnDKzSt9GwtjubCty", address: "123 Sunny Lane, Broomfield, CO 80023", email: "kcallawayworks@gmail.com", bio: "I've been busy being the God of Mo and Callaway's existance.", avatar: "https://catmacros.files.wordpress.com/2009/12/darth_cat.jpg", product_id: 3, conversation_id: 3}
])

Image.create!([
  {url: "https://natashaskitchen.com/wp-content/uploads/2017/04/Easter-Egg-Chicks-5-600x900.jpg"},
  {url: "https://i.ytimg.com/vi/s1HO5YZqkfc/maxresdefault.jpg"},
  {url: "https://themetapicture.com/media/funny-cat-Darth-Vader-costume.jpg"}
])

Category.create!([
  {title: "Bakery"},
  {title: "Beverages"},
  {title: "Canned & Pickled"},
  {title: "Herbs & Spices"},
  {title: "Health & Home"},
  {title: "Produce"}
])

Product.create!([
  {name: "Creators Herbs 1", description: "Small batch herbs", price: "3.0", QOH: "3.0", category_id: 6},
  {name: "Creators Herbs 2", description: "Large batch herbs", price: "6.0", QOH: "6.0", category_id: 6},
  {name: "Mo's Herbs 1", description: "Small batch herbs", price: "6.0", QOH: "1.0", category_id: 6},
  {name: "Mo's Herbs 2", description: "Large batch herbs", price: "9.0", QOH: "3.0", category_id: 6},
  {name: "Callaway's Herbs 1", description: "Small batch herbs", price: "9.0", QOH: "3.0", category_id: 6},
  {name: "Callaways Herbs 2", description: "Large batch herbs", price: "12.0", QOH: "0.0", category_id: 6}
])

Conversation.create!([
  {sender_id: 1, recipient_id: 2},
  {sender_id: 2, recipient_id: 3},
  {sender_id: 3, recipient_id: 1}
])

Message.create!([
  {body: "If you can see this, the body of the email is working when sending a message.", subject: "This is the subject line which will auto populate with product details."},
  {body: "If you can see this, the body of the email is working when sending a message.", subject: "This is the subject line which will auto populate with product details."},
  {body: "If you can see this, the body of the email is working when sending a message.", subject: "This is the subject line which will auto populate with product details."}
])


