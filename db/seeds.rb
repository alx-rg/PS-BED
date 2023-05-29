# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Pet.create!([
  {
    name: "Moose Doodle",
    race: "Dog",
    breed: "Golden Doodle",
    birthday: Date.new(2020, 6, 3),
    favoriteFood: "Raw Meat",
    picUrl: "https://instagram.fiev22-1.fna.fbcdn.net/v/t51.2885-19/113500307_316543036385408_1481241863323025277_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fiev22-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=Ef7DKYZrzWsAX-tvEst&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfD4MzUadO5pdHY1VFc68hJxMfQ8F1xozEEAAP-spuOpTg&oe=6477DFD5&_nc_sid=f70a57",
    price: 0.99999999e8,
    picUrlSq: [],
    description: "Simply the best doggo ever, there's nothing quite like him and that's why he's first in the DB. Obviously he's priceless like all the other doggos.. So money can't buy happiness.. But it could get you another doggo and they could play together",
    created_at: "2023-05-28 02:41:02.506406",
    updated_at: "2023-05-28 12:38:16.715979",
    fetch: true
  },
  {
    name: "T-Rex rex",
    race: "Dog",
    breed: "Rottweiler",
    birthday: Date.new(2017, 11, 11),
    favoriteFood: "Chicken",
    picUrl: "https://www.dogbreedslist.info/uploads/dog-pictures/french-bulldog-2.jpg",
    price: 0.999e1,
    picUrlSq: ["http://www.dogbreedplus.com/dog_breeds/images/cute-rottweiler-puppy.jpg"],
    description: "Why did the Rottweiler sit on the watch? He wanted to be a watchdog!",
    created_at: "2023-05-28 02:43:55.427027",
    updated_at: "2023-05-28 13:19:00.293640",
    fetch: false
  },
  {
    name: "Dido",
    race: "Dog",
    breed: "Latipoo",
    birthday: Date.new(2008, 11, 11),
    favoriteFood: "Pork heart",
    picUrl: "http://www.gpamass.com/s/img/emotionheader713297504.jpg",
    price: 0.999e1,
    picUrlSq: ["https://www.collinsdictionary.com/images/thumb/greyhound_21701074_250.jpg"],
    description: "His favorite joke? 'Why did the Greyhound sit in the shade? To avoid being a hot dog!'",
    created_at: "2023-05-28 02:46:40.734431",
    updated_at: "2023-05-28 02:46:40.734431",
    fetch: true
  },
  {
    name: "Fido",
    race: "Dog",
    breed: "Greyhound",
    birthday: Date.new(2008, 11, 11),
    favoriteFood: "Liver",
    picUrl: "http://www.gpamass.com/s/img/emotionheader713297504.jpg",
    price: 0.999e1,
    picUrlSq: ["https://www.collinsdictionary.com/images/thumb/greyhound_21701074_250.jpg"],
    description: "Fido is a Greyhound with a need for speed, but don't be fooled; he's also a pro at napping. When he's not dreaming of chasing rabbits or winning races, he's busy perfecting his stand-up comedy routine. His favorite joke? 'Why did the Greyhound sit in the shade? To avoid being a hot dog!'",
    created_at: "2023-05-28 02:46:40.734431",
    updated_at: "2023-05-28 02:46:40.734431",
    fetch: nil
  },
  {
    name: "Santa's Little Helper",
    race: "Elf",
    breed: "Mixed",
    birthday: Date.new(2008, 11, 11),
    favoriteFood: "Pork",
    picUrl: "https://www.dogbreedslist.info/uploads/dog-pictures/dachshund-2.jpg",
    price: 0.999e1,
    picUrlSq: ["http://via.placeholder.com/250x250"],
    description: "Santa's Little Helper always gets a laugh when he says, 'I may be part Elf, but I'm a full-time treat inspector!'",
    created_at: "2023-05-28 11:34:05.458387",
    updated_at: "2023-05-28 11:34:05.458387",
    fetch: nil
  },
  {
    name: "Alf",
    race: "Alien",
    breed: "Alien",
    birthday: Date.new(2008, 11, 11),
    favoriteFood: "Cats",
    picUrl: "https://www.dogbreedslist.info/uploads/dog-pictures/pembroke-welsh-corgi-2.jpg",
    price: 0.5999e2,
    picUrlSq: ["http://via.placeholder.com/250x250"],
    description: "Alf loves to make his friends chuckle with his joke, 'Why did the Alien get a dog? To keep an eye on the neighborhood cats!'",
    created_at: "2023-05-28 11:34:15.981001",
    updated_at: "2023-05-28 11:34:15.981001",
    fetch: nil
  },
  {
    name: "Bubba",
    race: "Dog",
    breed: "Mastiff",
    birthday: Date.new(2008, 11, 11),
    favoriteFood: "Dragon",
    picUrl: "https://www.dogbreedslist.info/uploads/dog-pictures/yorkshire-terrier-2-2.jpg",
    price: 0.999e1,
    picUrlSq: ["http://via.placeholder.com/250x250"],
    description: "Bubba always gets a giggle when he tells his pals, 'I'm a Mastiff, but don't be scared, I only hunt for treats and cuddles!'",
    created_at: "2023-05-28 11:34:24.256693",
    updated_at: "2023-05-28 13:18:16.296343",
    fetch: false
  }
])
