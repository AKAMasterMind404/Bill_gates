String amountParser(int amount){
  if(amount<1000){return amount.toString();}

  String newamount = amount.toString();

  int rem = newamount.length%3;

  String init = newamount.substring(0,rem);
  String remain = newamount.substring(rem);

  init!=""?init+=",":null;

  String ans = "";

  for(int i=0;i<remain.length;i++){
    ans+=remain[i];
    if(i+1!=remain.length && (i+1)%3==0){
      ans+=",";
    }
  }

  return init + ans;
}

class CardData {
  int price;
  String imageURL, name;
  int bought = 0;

  CardData({this.price, this.imageURL, this.name, this.bought = 0});
}

CardData c1 = CardData(price: 2, name: "Big Mac", imageURL: "lib/assets/Images/bigmac.png");
CardData c2 = CardData(price: 3, name: "Flip Flops", imageURL: "lib/assets/Images/flipflops.jpg");
CardData c3 = CardData(price: 5, name: "Coca-Cola Pack", imageURL: "lib/assets/Images/cocacolapack.jpeg");
CardData c4 = CardData(price: 12, name: "Movie Ticket", imageURL: "lib/assets/Images/movieticket.jpg");
CardData c5 = CardData(price: 15, name: "Book", imageURL: "lib/assets/Images/book.jpg");
CardData c6 = CardData(price: 45, name: "Lobster Dinner", imageURL: "lib/assets/Images/lobsterdinner.jpg");
CardData c7 = CardData(price: 60, name: "Video Game", imageURL: "lib/assets/Images/videogame.jpg");
CardData c8 = CardData(price: 99, name: "Amazon Echo", imageURL: "lib/assets/Images/amazonecho.jpg");
CardData c9 = CardData(price: 100, name: "Year of Netflix", imageURL: "lib/assets/Images/netflix.png");
CardData c10 = CardData(price: 125, name: "Air Jordans", imageURL: "lib/assets/Images/airjordans.jpg");
CardData c11 = CardData(price: 199, name: "Air Pods", imageURL: "lib/assets/Images/airpods.jpg");
CardData c12 = CardData(price: 299, name: "Gaming Console", imageURL: "lib/assets/Images/gamingconsole.jpg");
CardData c13 = CardData(price: 350, name: "Drone", imageURL: "lib/assets/Images/drone.jpg");
CardData c14 = CardData(price: 699, name: "Smartphone", imageURL: "lib/assets/Images/smartphone.jpg");
CardData c15 = CardData(price: 800, name: "Bike", imageURL: "lib/assets/Images/bicycle.jpg");
CardData c16 = CardData(price: 1500, name: "Kitten", imageURL: "lib/assets/Images/kitten.jpg");
CardData c17 = CardData(price: 1500, name: "Puppy", imageURL: "lib/assets/Images/puppy.jpg");
CardData c18 = CardData(price: 2300, name: "Auto Rickshaw", imageURL: "lib/assets/Images/autorickshaw.jpg");
CardData c19 = CardData(price: 2500, name: "Horse", imageURL: "lib/assets/Images/horse.jpg");
CardData c20 = CardData(price: 3000, name: "Acre of Farmland", imageURL: "lib/assets/Images/farmland.jpeg");
CardData c21 = CardData(price: 5500, name: "Designer Handbag", imageURL: "lib/assets/Images/handbag.jpg");
CardData c22 = CardData(price: 6000, name: "Hot Tub", imageURL: "lib/assets/Images/hottub.jpg");
CardData c23 = CardData(price: 7000, name: "Luxury Wine", imageURL: "lib/assets/Images/wine.jpg");
CardData c24 = CardData(price: 10000, name: "Diamond Ring", imageURL: "lib/assets/Images/diamondring.jpg");
CardData c25 = CardData(price: 12000, name: "Jetski", imageURL: "lib/assets/Images/jetski.jpg");
CardData c26 = CardData(price: 15000, name: "Rolex", imageURL: "lib/assets/Images/rolex.jpg");
CardData c27 = CardData(price: 30000, name: "Ford F-150", imageURL: "lib/assets/Images/ford.jpg");
CardData c28 = CardData(price: 75000, name: "Tesla", imageURL: "lib/assets/Images/tesla.jpg");
CardData c29 = CardData(price: 150000, name: "Monster Truck", imageURL: "lib/assets/Images/monstertruck.jpg");
CardData c30 = CardData(price: 250000, name: "Ferrari", imageURL: "lib/assets/Images/ferrari.jpg");
CardData c31 = CardData(price: 3000000, name: "Single Family Home", imageURL: "lib/assets/Images/home.jpg");
CardData c32 = CardData(price: 7000000, name: "Gold Bar", imageURL: "lib/assets/Images/goldbar.jpg");
CardData c33 = CardData(price: 1500000, name: "McDonalds Franchise", imageURL: "lib/assets/Images/mcdonalds.jpg");
CardData c34 = CardData(price: 5250000, name: "Superbowl Ad", imageURL: "lib/assets/Images/superbowlAD.jpg");
CardData c35 = CardData(price: 7500000, name: "Yacht", imageURL: "lib/assets/Images/yatch.jpg");
CardData c36 = CardData(price: 8000000, name: "M1 Abrams", imageURL: "lib/assets/Images/m1abrams.png");
CardData c37 = CardData(price: 15000000, name: "Formula 1 Car", imageURL: "lib/assets/Images/f1car.jpg");
CardData c38 = CardData(price: 31000000, name: "Apache Helicopter", imageURL: "lib/assets/Images/apacheHelicopter.jpg");
CardData c39 = CardData(price: 45000000, name: "Mansion", imageURL: "lib/assets/Images/mansion.jpg");
CardData c40 = CardData(price: 100000000, name: "Make a Movie", imageURL: "lib/assets/Images/movie.jpg");
CardData c41 = CardData(price: 148000000, name: "Boeing 747", imageURL: "lib/assets/Images/boeing747.jpg");
CardData c42 = CardData(price: 780000000, name: "Mona Lisa", imageURL: "lib/assets/Images/monalisa.jpg");
CardData c43 = CardData(price: 850000000, name: "Sky Scraper", imageURL: "lib/assets/Images/skyscraper.jpg");
CardData c44 = CardData(price: 930000000, name: "Cruise Ship", imageURL: "lib/assets/Images/cruise.jpg");
CardData c45 = CardData(price: 2120000000, name: "NBA Team", imageURL: "lib/assets/Images/nbateam.jpg");
