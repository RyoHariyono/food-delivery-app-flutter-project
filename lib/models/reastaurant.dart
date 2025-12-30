import 'package:flutter/foundation.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic CheeseBurger",
      description:
          "A juicy beef patty topped with melted cheese, lettuce, tomato, and our special sauce, served on a toasted bun.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "extra cheese", price: 0.99),
        Addon(name: "bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Aloga Burger",
      description:
          "A vegan patty topped with lettuce, tomato, and our special sauce, served on a toasted bun.",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "extra pinnaple", price: 2.00),
        Addon(name: "mushrooms", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description:
          "A juicy beef patty topped with melted cheese, crispy onion rings, BBQ sauce, lettuce, and tomato, served on a toasted bun.",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "bacon", price: 2.99),
        Addon(name: "more bbq", price: 2.99),
      ],
    ),
    Food(
      name: "Bluemoon Burger",
      description:
          "A juicy beef patty topped with blue cheese, lettuce, tomato, and our special sauce, served on a toasted bun.",
      imagePath: "lib/images/burgers/bluemoon_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "extra blue cheese", price: 0.99),
        Addon(name: "fries", price: 1.99),
        Addon(name: "onion rings", price: 2.99),
      ],
    ),
    Food(
      name: "Vega Burger",
      description:
          "Vegan patty topped with lettuce, tomato, and our special sauce, served on a toasted bun.",
      imagePath: "lib/images/burgers/vega_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [Addon(name: "extra vega cheese", price: 0.99)],
    ),

    // desserts
    Food(
      name: "Frozen Yogurt",
      description:
          "Smooth and creamy frozen yogurt with a refreshing sweet taste.",
      imagePath: "lib/images/desserts/frozen_yogurt_dessert.png",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "extra topping", price: 0.49)],
    ),
    Food(
      name: "Ice Cream",
      description: "Classic ice cream with rich flavor and smooth texture.",
      imagePath: "lib/images/desserts/ice_cream_dessert.png",
      price: 1.79,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "wafer stick", price: 0.39)],
    ),
    Food(
      name: "Marshmallows",
      description: "Soft and fluffy marshmallows, perfect for a sweet treat.",
      imagePath: "lib/images/desserts/marshmallows_dessert.png",
      price: 1.29,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "chocolate dip", price: 0.59)],
    ),
    Food(
      name: "Pastry",
      description: "Freshly baked pastry with a buttery and flaky texture.",
      imagePath: "lib/images/desserts/pastry_dessert.png",
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "extra filling", price: 0.79)],
    ),
    Food(
      name: "Pumpkin Pie",
      description: "Classic pumpkin pie with warm spices and creamy filling.",
      imagePath: "lib/images/desserts/pumpkin_pie_dessert.png",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "whipped cream", price: 0.59)],
    ),

    // drinks
    Food(
      name: "Alcohol Drink",
      description: "Refreshing alcoholic beverage served chilled.",
      imagePath: "lib/images/drinks/alcohol_drink.png",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [Addon(name: "extra ice", price: 0.29)],
    ),
    Food(
      name: "Bottled Water",
      description: "Pure and refreshing bottled mineral water.",
      imagePath: "lib/images/drinks/bottled_water_drink.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [Addon(name: "lemon slice", price: 0.19)],
    ),
    Food(
      name: "Coffee",
      description: "Freshly brewed coffee with rich aroma and flavor.",
      imagePath: "lib/images/drinks/coffe_drink.png",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [Addon(name: "extra sugar", price: 0.19)],
    ),
    Food(
      name: "Energy Drink",
      description: "Boost your energy with this refreshing energy drink.",
      imagePath: "lib/images/drinks/energy_drink.png",
      price: 2.29,
      category: FoodCategory.drinks,
      availableAddons: [Addon(name: "extra ice", price: 0.29)],
    ),
    Food(
      name: "Soft Drink",
      description: "Chilled soft drink with a fizzy refreshing taste.",
      imagePath: "lib/images/drinks/soft_drink.png",
      price: 1.19,
      category: FoodCategory.drinks,
      availableAddons: [Addon(name: "large size", price: 0.49)],
    ),

    //salads
    Food(
      name: "Caprese Salad",
      description: "Fresh tomatoes, mozzarella, and basil with olive oil.",
      imagePath: "lib/images/salads/caprese_salad.png",
      price: 3.49,
      category: FoodCategory.salads,
      availableAddons: [Addon(name: "extra mozzarella", price: 0.79)],
    ),
    Food(
      name: "Caesar Salad",
      description: "Crisp romaine lettuce with caesar dressing and croutons.",
      imagePath: "lib/images/salads/ceasar_salad.png",
      price: 3.79,
      category: FoodCategory.salads,
      availableAddons: [Addon(name: "grilled chicken", price: 1.49)],
    ),
    Food(
      name: "Chef Salad",
      description: "Mixed greens topped with meats, cheese, and fresh veggies.",
      imagePath: "lib/images/salads/chef_salad.png",
      price: 4.29,
      category: FoodCategory.salads,
      availableAddons: [Addon(name: "extra egg", price: 0.59)],
    ),
    Food(
      name: "Cobb Salad",
      description: "Hearty salad with chicken, avocado, egg, and bacon.",
      imagePath: "lib/images/salads/cobb_salad.png",
      price: 4.79,
      category: FoodCategory.salads,
      availableAddons: [Addon(name: "extra avocado", price: 0.89)],
    ),
    Food(
      name: "Crab Louie Salad",
      description: "Fresh crab meat served on crisp lettuce with dressing.",
      imagePath: "lib/images/salads/crab_louie_salad.png",
      price: 5.49,
      category: FoodCategory.salads,
      availableAddons: [Addon(name: "extra crab", price: 1.99)],
    ),

    //sides
    Food(
      name: "Garlic Bread",
      description: "Toasted bread with garlic butter and herbs.",
      imagePath: "lib/images/sides/garlic_bread_side.png",
      price: 1.49,
      category: FoodCategory.sides,
      availableAddons: [Addon(name: "extra cheese", price: 0.49)],
    ),
    Food(
      name: "Loaded Fries",
      description: "Crispy fries topped with cheese and special sauce.",
      imagePath: "lib/images/sides/loaded_fries_side.png",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [Addon(name: "extra sauce", price: 0.59)],
    ),
    Food(
      name: "Mac & Cheese",
      description: "Creamy macaroni with rich cheese sauce.",
      imagePath: "lib/images/sides/mac_side.png",
      price: 2.79,
      category: FoodCategory.sides,
      availableAddons: [Addon(name: "extra cheese", price: 0.69)],
    ),
    Food(
      name: "Onion Rings",
      description: "Golden fried onion rings, crispy and delicious.",
      imagePath: "lib/images/sides/onion_rings_sides.png",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [Addon(name: "bbq sauce", price: 0.39)],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a natural sweet taste.",
      imagePath: "lib/images/sides/sweet_potato_side.png",
      price: 2.69,
      category: FoodCategory.sides,
      availableAddons: [Addon(name: "cheese dip", price: 0.59)],
    ),
  ];

  /*
  getters
  */

  List<Food> get menu => _menu;

  /*
  operations

  // add to cart

  // remove from cart

  // get total price of cart

  // get total number of items in cart


  // clear cart
  */

  /*
  helpers

  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
  */
}
