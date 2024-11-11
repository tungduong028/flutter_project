List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code':"NYC",
      'name':"New-York"
    },
    'to': {
      'code':"LDN",
      'name':"London"
    },
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time':"08:00 AM",
    "number":23
  },
  {
    'from': {
      'code':"DK",
      'name':"Dhaka"
    },
    'to': {
      'code':"SH",
      'name':"Shanghai"
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time':"09:00 AM",
    "number":45
  },
];
List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel_room.png',
    'place': 'Open Space',
    'destination': 'London',
    'detail': "You're just a 15-minute walk from the London Eye and all the fun of the South Bank at our Premier Inn London Southwark (Southwark Station) hotel. Visit the London Dungeons or go on a trip to nearby Tower Bridge. Take a short walk to the Southbank Centre and lose yourself in fantastic shows at the world-famous Royal Festival Hall. Our hotel has great links across London - we're next to Southwark Underground station and the Jubilee Line, and we're also close to overground trains from Waterloo and London Bridge. Enjoy prime cuts of steak and other delicious food at our in-house Bar and Block restaurant, and after an exciting day on the South Bank, look forward to a relaxing sleep on one of our super-comfy beds.",
    'price': 25,
    'images': [
      'hotel_room1.png','hotel_room2.png','hotel_room3.png'
    ]
  },
  {
    'image': 'city_view.png',
    'place': 'Global Will',
    'destination': 'London',
    'detail': "Holiday Inn London West is set in London and is within a 10-minute walk of North Acton Tube Station. It provides a gym, as well as 24-hour room service, a coffee bar and a rooftop terrace.\nThe hotel offers an express check-in and check-out feature, a concierge and a 24-hour reception. Wi-Fi is also provided."
    +"\nHoliday Inn London West's rooms offer a private bathroom, a desk and a bathtub, plus all the essentials for a comfortable stay. They each include ironing facilities, a radio and heating."
    +"\nOn-site dining options include Wok Around the World, which provides a convenient place to enjoy a meal. Hub is an ideal spot to have a beverage before heading out to explore the local nightlife."
    +"\nAfter settling in to their room, guests can explore the local area with use of Acton Main Line Railway Station, which is a brief walk from the hotel. Piccadilly Circus, Oxford Street and Harrods are nearby.",
    'price': 40,
    'images': [
      'city_view1.png','city_view2.png','city_view3.png'
    ]
  },
  {
    'image': 'pool_view.png',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'detail': "You're just a 15-minute walk from the London Eye and all the fun of the South Bank at our Premier Inn London Southwark (Southwark Station) hotel. Visit the London Dungeons or go on a trip to nearby Tower Bridge. Take a short walk to the Southbank Centre and lose yourself in fantastic shows at the world-famous Royal Festival Hall. Our hotel has great links across London - we're next to Southwark Underground station and the Jubilee Line, and we're also close to overground trains from Waterloo and London Bridge. Enjoy prime cuts of steak and other delicious food at our in-house Bar and Block restaurant, and after an exciting day on the South Bank, look forward to a relaxing sleep on one of our super-comfy beds.",
    'price': 68,
    'images': [
      'pool_view1.png','pool_view2.png','pool_view3.png'
    ]
  },
];
class AppRoutes{

  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_screen";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_detail";

} 