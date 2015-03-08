# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Artist.create(first_name: "Cy", last_name:"Twombly", artist_description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, vitae omnis ipsa. Natus porro amet et voluptatum ea ad incidunt accusamus veritatis aut ipsam? Consectetur debitis ducimus veniam amet asperiores! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est inventore placeat debitis vel magni eaque! Iste exercitationem officia iusto repellendus reiciendis eveniet aperiam aliquam eaque, commodi cum, quod quae atque.")
a2 = Artist.create(first_name: "Robert", last_name:"Rauschenberg", artist_description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, vitae omnis ipsa. Natus porro amet et voluptatum ea ad incidunt accusamus veritatis aut ipsam? Consectetur debitis ducimus veniam amet asperiores! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est inventore placeat debitis vel magni eaque! Iste exercitationem officia iusto repellendus reiciendis eveniet aperiam aliquam eaque, commodi cum, quod quae atque.")
a3 = Artist.create(first_name: "Jean-Michel", last_name:"Basquiat", artist_description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, vitae omnis ipsa. Natus porro amet et voluptatum ea ad incidunt accusamus veritatis aut ipsam? Consectetur debitis ducimus veniam amet asperiores! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est inventore placeat debitis vel magni eaque! Iste exercitationem officia iusto repellendus reiciendis eveniet aperiam aliquam eaque, commodi cum, quod quae atque.")

i1 = Item.create(title: "Leda and the Swan", dimensions: "256 x 307 cm", medium: "oil, crayon, pencil on canvas", price: "1000", artist_id: 1, category_id: 1, url: "http://www.ucarecdn.com/75c1030f-f5ce-45a2-a64e-78a063f64b52/twombly_leda.jpg")
i2 = Item.create(url: "http://www.ucarecdn.com/0c4c59a0-5039-4c99-b7d0-5f658a100646/twombly_tiznit.jpg",title: "Tiznit", dimensions: "256 x 307 cm", medium: "oil, crayon, pencil on canvas", price: "1000", artist_id: 1, category_id: 1)
i3 = Item.create(url: "http://www.ucarecdn.com/82e78837-b27d-44a2-b60f-3479ee3c52f7/1.jpg",title: "UNTITLED, NEW YORK 1953", dimensions: " 15 X 9 7/8 X 4 INCHES (38.1 X 25 X 10.1 CM)", medium: " WOOD, WIRE, TWINE, NAILS, HOUSE PAINT, AND WAX ON CLOTH", price: "1000", artist_id: 1, category_id: 2)

c1 = Category.create(category_name:"Painting")
c2 = Category.create(category_name:"Sculpture")
c3 = Category.create(category_name:"Photography")

i4 = Item.create(url: "http://www.ucarecdn.com/1976cde6-f01b-41e2-820d-97f0d79872eb/gallery_881.jpg",title: "Mango Ice Cave (Scale)", dimensions: "(284.5 x 238.8 x 101.6 cm)", medium: "Solvent transfer, acrylic, paper, and fabric on wood with tarpaulin, ladder, unicycle, mirrored Plexiglas, and metal", price: "1000", artist_id: 2, category_id: 2)
i5 = Item.create(url: "http://www.ucarecdn.com/966dd3b8-cb82-4c8f-a41d-5035fe1473d4/rauschenbergbed1322875873258.jpg",title: "Bed", dimensions: "167.5 x 228.5 cm", medium: "Combine: oil and pencil on pillow, quilt, and sheet, mounted on wood support", price: "1000", artist_id: 2, category_id: 2)
i6 = Item.create(url: "http://www.ucarecdn.com/6b1dfadf-50de-43c5-a195-d990d15312d5/RauschenbergMonogram.jpg",title: "Monogram", medium: "Combine: oil, paper, fabric, printed paper, printed reproductions, metal, wood, rubber shoe heel, and tennis ball on canvas with oil on Angora goat and rubber tire on wood platform mounted on four casters", price: "1000", artist_id: 2, category_id: 2)

i7 = Item.create(url: "http://www.ucarecdn.com/2eec3f2e-27da-4f43-8eb9-5a8f0802208f/birdonmoneyjpgLarge.jpg",title: "Bird on Money", medium: "acrylic, crayon on canvas", price: "1000", dimensions: "167.5 x 228.5 cm", artist_id: 3, category_id: 1)
i8 = Item.create(url: "http://www.ucarecdn.com/1101c40b-b571-42ab-9f72-876191bde02f/fishingjpgLarge.jpg",title: "Fishing", medium: "acrylic, crayon on canvas", price: "1000", artist_id: 3, category_id: 1, dimensions: "167.5 x 228.5 cm")
