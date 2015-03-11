# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Artist.create(url: "http://www.ucarecdn.com/dcf666bb-c74d-4659-a86e-2196a1b8ffe2/Twombly460x276.jpg", first_name: "Cy", last_name:"Twombly", artist_description: "Edwin Parker 'Cy' Twombly, Jr. (/saɪ ˈtwɒmbli/; April 25, 1928 – July 5, 2011[1]) was an American painter of large-scale, freely scribbled, calligraphic and graffiti-like works on solid fields of mostly gray, tan, or off-white colors. His paintings are in the permanent collections of the New York's Museum of Modern Art and the Musée du Louvre in Paris.")
a2 = Artist.create(url: "http://www.ucarecdn.com/ac6b2946-6919-45a0-9e86-61394b588346/Robert_Rauschenberg_1968.jpg", first_name: "Robert", last_name:"Rauschenberg", artist_description: "Robert Rauschenberg (October 22, 1925 – May 12, 2008) was an American painter and graphic artist whose early works anticipated the pop art movement. Rauschenberg is well known for his 'Combines' of the 1950s, in which non-traditional materials and objects were employed in innovative combinations. Rauschenberg was both a painter and a sculptor and the Combines are a combination of both, but he also worked with photography, printmaking, papermaking, and performance. He was awarded the National Medal of Arts in 1993. He became the recipient of the Leonardo da Vinci World Award of Arts in 1995 in recognition of his more than 40 years of fruitful artmaking.")
a3 = Artist.create(url: "http://www.ucarecdn.com/ac317aed-a476-4dc5-99b3-baabf574009a/basquiat_portrait.jpg", first_name: "Jean-Michel", last_name:"Basquiat", artist_description: "Jean-Michel Basquiat (December 22, 1960 – August 12, 1988) was an American artist, musician and producer. Basquiat first achieved notoriety as part of SAMO, an informal graffiti group who wrote enigmatic epigrams in the cultural hotbed of the Lower East Side of Manhattan, New York City during the late 1970s where the hip hop, post-punk and street art movements had coalesced. By the 1980s he was exhibiting his Neo-expressionist and Primitivist paintings in galleries and museums internationally. The Whitney Museum of American Art held a retrospective of his art in 1992.")

i1 = Item.create(title: "Leda and the Swan", dimensions: "256 x 307 cm", medium: "oil, crayon, pencil on canvas", price: "1000", artist_id: 1, category_id: 1, url: "http://www.ucarecdn.com/75c1030f-f5ce-45a2-a64e-78a063f64b52/twombly_leda.jpg")
i2 = Item.create(url: "http://www.ucarecdn.com/0c4c59a0-5039-4c99-b7d0-5f658a100646/twombly_tiznit.jpg",title: "Tiznit", dimensions: "256 x 307 cm", medium: "oil, crayon, pencil on canvas", price: "1000", artist_id: 1, category_id: 1)
i3 = Item.create(url: "http://www.ucarecdn.com/82e78837-b27d-44a2-b60f-3479ee3c52f7/1.jpg",title: "UNTITLED, NEW YORK 1953", dimensions: " 15 X 9 7/8 X 4 INCHES (38.1 X 25 X 10.1 CM)", medium: " WOOD, WIRE, TWINE, NAILS, HOUSE PAINT, AND WAX ON CLOTH", price: "1000", artist_id: 1, category_id: 2)

c1 = Category.create(category_name:"Painting")
c2 = Category.create(category_name:"Sculpture")
c3 = Category.create(category_name:"Photography")

i4 = Item.create(url: "http://www.ucarecdn.com/1976cde6-f01b-41e2-820d-97f0d79872eb/gallery_881.jpg",title: "Mango Ice Cave (Scale)", dimensions: "(284.5 x 238.8 x 101.6 cm)", medium: "Solvent transfer, acrylic, paper, and fabric on wood with tarpaulin, ladder, unicycle, mirrored Plexiglas, and metal", price: 1000, artist_id: 2, category_id: 2)
i5 = Item.create(url: "http://www.ucarecdn.com/966dd3b8-cb82-4c8f-a41d-5035fe1473d4/rauschenbergbed1322875873258.jpg",title: "Bed", dimensions: "167.5 x 228.5 cm", medium: "Combine: oil and pencil on pillow, quilt, and sheet, mounted on wood support", price: 1000, artist_id: 2, category_id: 2)
i6 = Item.create(url: "http://www.ucarecdn.com/6b1dfadf-50de-43c5-a195-d990d15312d5/RauschenbergMonogram.jpg",title: "Monogram", medium: "Combine: oil, paper, fabric, printed paper, printed reproductions, metal, wood, rubber shoe heel, and tennis ball on canvas with oil on Angora goat and rubber tire on wood platform mounted on four casters", price: 1000, artist_id: 2, category_id: 2)

i7 = Item.create(url: "http://www.ucarecdn.com/2eec3f2e-27da-4f43-8eb9-5a8f0802208f/birdonmoneyjpgLarge.jpg",title: "Bird on Money", medium: "acrylic, crayon on canvas", price: 1000, dimensions: "167.5 x 228.5 cm", artist_id: 3, category_id: 1)
i8 = Item.create(url: "http://www.ucarecdn.com/1101c40b-b571-42ab-9f72-876191bde02f/fishingjpgLarge.jpg",title: "Fishing", medium: "acrylic, crayon on canvas", price: 1000, artist_id: 3, category_id: 1, dimensions: "167.5 x 228.5 cm")
