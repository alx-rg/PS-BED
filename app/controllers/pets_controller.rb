class PetsController < ApplicationController

  def index
    @pets = [
      {
          "name": "Rex",
          "race": "Dog",
          "breed": "Rottweiler",
          "birthday": "20017-11-11",
          "favoriteFood": "Chicken",
          "picUrl": "https://www.dogbreedslist.info/uploads/dog-pictures/french-bulldog-2.jpg",
          "price": 9.99,
          "picUrlSq": "http://www.dogbreedplus.com/dog_breeds/images/cute-rottweiler-puppy.jpg",
          "description": "Rex is a dog and he's a good dog who loves to play and hang out with his owners. He also likes to nap and enjoys eating dog food"
      },
      {
          "name": "Fido",
          "race": "Dog",
          "breed": "Greyhound",
          "birthday": "2008-11-11",
          "favoriteFood": "Liver",
          "picUrl": "http://www.gpamass.com/s/img/emotionheader713297504.jpg",
          "price": 9.99,
          "picUrlSq": "https://www.collinsdictionary.com/images/thumb/greyhound_21701074_250.jpg",
          "description": "Fido is a dog and he's a good dog who loves to play and hang out with his owners. He also likes to nap and enjoys eating dog food"
      },
      {
          "name": "Rolfe",
          "race": "Dog",
          "breed": "Pitbull",
          "birthday": "2008-11-11",
          "favoriteFood": "Beef",
          "picUrl": "https://www.pocketpitbull.com/wp-content/uploads/2017/03/blue-staffy-pitbull-370x208.jpg",
          "price": 9.99,
          "picUrlSq": "http://www.vrcpitbull.com/wp-content/uploads/2011/02/VAMPVAMP%E2%80%A2.jpg",
          "description": "Rolfe is a dog and he's a good dog who loves to play and hang out with his owners. He also likes to nap and enjoys eating dog food"
      },
      {
          "name": "Princhi",
          "race": "Dog",
          "breed": "West Highland White Terrier",
          "birthday": "2008-11-11",
          "favoriteFood": "Fish",
          "picUrl": "https://www.dogbreedslist.info/uploads/dog-pictures/yorkshire-terrier-2.jpg",
          "picUrlSq": "https://upload.wikimedia.org/wikipedia/commons/2/2c/West_Highland_White_Terrier_Krakow.jpg",
          "description": "Princhi is a dog and he's a good dog who loves to play and hang out with his owners. He also likes to nap and enjoys eating dog food"
      },
      {
          "name": "Mr. Fluffles",
          "race": "Dog",
          "breed": "Poodle",
          "birthday": "2008-11-11",
          "favoriteFood": "Chicken",
          "picUrl": "https://www.dogbreedslist.info/uploads/dog-pictures/poodle-2-3.jpg",
          "price": 9.99,
          "picUrlSq": "http://www.caninest.com/images/black-poodle.jpg",
          "description": "Mr. Fluffles is a dog and he's a good dog who loves to play and hang out with his owners. He also likes to nap and enjoys eating dog food"
      },
      {
          "name": "Santa's Little Helper",
          "race": "Elf",
          "breed": "Mixed",
          "birthday": "2008-11-11",
          "favoriteFood": "Pork",
          "picUrl": "https://www.dogbreedslist.info/uploads/dog-pictures/dachshund-2.jpg",
          "price": 9.99,
          "picUrlSq": "http://via.placeholder.com/250x250",
          "description": "Santa's Little Helper is a dog and he's a good dog who loves to play and hang out with his owners. He also likes to nap and enjoys eating dog food"
      },
      {
          "name": "Alf",
          "race": "Alien",
          "breed": "Alien",
          "birthday": "2008-11-11",
          "favoriteFood": "Cats",
          "picUrl": "https://www.dogbreedslist.info/uploads/dog-pictures/pembroke-welsh-corgi-2.jpg",
          "price": 59.99,
          "picUrlSq": "http://via.placeholder.com/250x250",
          "description": "Alf is an alien and he's a good alien who loves to play and hang out with his owners. He also likes to nap and enjoys eating cats"
      },
      {
          "name": "Bubba",
          "race": "Dog",
          "breed": "Mastiff",
          "birthday": "2008-11-11",
          "favoriteFood": "Dragon",
          "picUrl": "https://www.dogbreedslist.info/uploads/dog-pictures/yorkshire-terrier-2-2.jpg",
          "price": 9.99,
          "picUrlSq": "http://via.placeholder.com/250x250",
          "description": "Bubba is a dog and he's a good dog who loves to play and hang out with his owners. He also likes to nap and enjoys eating dog food"
      }
  ]
  end

end
