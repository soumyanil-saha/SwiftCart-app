import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'login_screen.dart';
=======
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586

void main() => runApp(const SwiftCartApp());

class Product {
  final String name;
  final double price;
<<<<<<< HEAD
  final String imageUrl;

  Product(this.name, this.price, this.imageUrl);
=======

  Product(this.name, this.price);
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
}

class SwiftCartApp extends StatelessWidget {
  const SwiftCartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwiftCart',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
<<<<<<< HEAD
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthWrapper(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const LandingPage(),
      },
=======
      home: const LandingPage(),
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
      debugShowCheckedModeBanner: false,
    );
  }
}

<<<<<<< HEAD
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // Here you would check auth state
    // For now, we'll just redirect to login
    Future.delayed(Duration.zero, () {
      Navigator.pushReplacementNamed(context, '/login');
    });

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

=======
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<Product> cart = [];
  final List<Product> wishlist = [];

<<<<<<< HEAD
  // Updated categories with image paths
  final List<Map<String, dynamic>> baseCategories = [
    {
      'name': 'Sneakers',
      'icon': Icons.shopping_bag_outlined,
      'image': 'assets/images/sneakers_category.jpg',
    },
    {
      'name': 'Smartwatch',
      'icon': Icons.watch_outlined,
      'image': 'assets/images/smartwatch_category.jpg',
    },
    {
      'name': 'Sunglasses',
      'icon': Icons.dark_mode_outlined,
      'image': 'assets/images/sunglasses_category.jpg',
    },
    {
      'name': 'Headphones',
      'icon': Icons.headphones_outlined,
      'image': 'assets/images/headphones_category.jpg',
    },
    {
      'name': 'Backpack',
      'icon': Icons.work_outline,
      'image': 'assets/images/backpack_category.jpg',
    },
  ];

  final Map<String, List<Product>> baseProducts = {
    'Sneakers': List.generate(
        10,
        (i) => Product('Sneaker ${i + 1}', 49.99 + i,
            'assets/images/sneakers${i + 1}.jpg')),
    'Smartwatch': List.generate(
        5,
        (i) => Product('Smartwatch ${i + 1}', 99.99 + i * 10,
            'assets/images/smartwatch${i + 1}.jpg')),
    'Sunglasses': List.generate(
        4,
        (i) => Product('Sunglass ${i + 1}', 59.99 + i * 5,
            'assets/images/sunglass${i + 1}.jpg')),
    'Headphones': List.generate(
        6,
        (i) => Product('Headphone ${i + 1}', 79.99 + i * 8,
            'assets/images/headphone${i + 1}.jpg')),
    'Backpack': List.generate(
        5,
        (i) => Product('Backpack${i + 1}', 39.99 + i * 7,
            'assets/images/bagpack${i + 1}.jpg')),
=======
  final List<String> baseCategories = [
    'Sneakers',
    'Smartwatch',
    'Sunglasses',
    'Headphones',
    'Backpack',
  ];

  final Map<String, List<Product>> baseProducts = {
    'Sneakers': List.generate(10, (i) => Product('Sneaker ${i + 1}', 49.99 + i)),
    'Smartwatch': List.generate(5, (i) => Product('Smartwatch ${i + 1}', 99.99 + i * 10)),
    'Sunglasses': List.generate(4, (i) => Product('Sunglass ${i + 1}', 59.99 + i * 5)),
    'Headphones': List.generate(6, (i) => Product('Headphone ${i + 1}', 79.99 + i * 8)),
    'Backpack': List.generate(5, (i) => Product('Backpack ${i + 1}', 39.99 + i * 7)),
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
  };

  final Map<String, Map<String, List<Product>>> browseCategories = {
    'Electronics': {
<<<<<<< HEAD
      'Smartphones': List.generate(
          3,
          (i) => Product('Smartphone ${i + 1}', 699.99 + i * 50,
              'assets/images/smartphone${i + 1}.jpg')),
      'TVs': List.generate(
          3,
          (i) => Product(
              'TV ${i + 1}', 999.99 + i * 100, 'assets/images/tv${i + 1}.jpg')),
      'Laptops': List.generate(
          3,
          (i) => Product('Laptop ${i + 1}', 1099.99 + i * 150,
              'assets/images/laptop${i + 1}.jpg')),
    },
    'Fashion': {
      'T-Shirts': List.generate(
          3,
          (i) => Product('T-Shirt ${i + 1}', 19.99 + i * 5,
              'assets/images/tshirt${i + 1}.jpg')),
      'Jeans': List.generate(
          3,
          (i) => Product('Jeans ${i + 1}', 49.99 + i * 10,
              'assets/images/jeans${i + 1}.jpg')),
    },
    'Cosmetics': {
      'Lipsticks': List.generate(
          2,
          (i) => Product('Lipstick ${i + 1}', 14.99 + i * 2,
              'assets/images/lipstick${i + 1}.jpg')),
      'Perfumes': List.generate(
          2,
          (i) => Product('Perfume ${i + 1}', 29.99 + i * 5,
              'assets/images/perfume${i + 1}.jpg')),
    },
    'Home Appliances': {
      'Microwave Ovens': List.generate(
          2,
          (i) => Product('Microwave Oven ${i + 1}', 299.99 + i * 50,
              'assets/images/microwave${i + 1}.jpg')),
      'Vacuum Cleaners': List.generate(
          2,
          (i) => Product('Vacuum Cleaner ${i + 1}', 199.99 + i * 30,
              'assets/images/vacuum${i + 1}.jpg')),
=======
      'Smartphones': List.generate(3, (i) => Product('Smartphone ${i + 1}', 699.99 + i * 50)),
      'TVs': List.generate(3, (i) => Product('TV ${i + 1}', 999.99 + i * 100)),
      'Laptops': List.generate(3, (i) => Product('Laptop ${i + 1}', 1099.99 + i * 150)),
    },
    'Fashion': {
      'T-Shirts': List.generate(3, (i) => Product('T-Shirt ${i + 1}', 19.99 + i * 5)),
      'Jeans': List.generate(3, (i) => Product('Jeans ${i + 1}', 49.99 + i * 10)),
    },
    'Cosmetics': {
      'Lipsticks': List.generate(2, (i) => Product('Lipstick ${i + 1}', 14.99 + i * 2)),
      'Perfumes': List.generate(2, (i) => Product('Perfume ${i + 1}', 29.99 + i * 5)),
    },
    'Home Appliances': {
      'Microwave Ovens': List.generate(2, (i) => Product('Microwave Oven ${i + 1}', 299.99 + i * 50)),
      'Vacuum Cleaners': List.generate(2, (i) => Product('Vacuum Cleaner ${i + 1}', 199.99 + i * 30)),
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
    },
  };

  void openProductList(String title, List<Product> items) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ProductListPage(
          category: title,
          products: items,
          cart: cart,
          wishlist: wishlist,
        ),
      ),
    );
  }

<<<<<<< HEAD
  void openSubcategory(
      String mainCategory, Map<String, List<Product>> subcategories) {
=======
  void openSubcategory(String mainCategory, Map<String, List<Product>> subcategories) {
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SubcategoryPage(
          category: mainCategory,
          subcategories: subcategories,
          cart: cart,
          wishlist: wishlist,
        ),
      ),
    );
  }

  void openCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CartPage(cart: cart),
      ),
    );
  }

  void openWishlist() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => WishlistPage(wishlist: wishlist),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Text('SwiftCart',
            style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              icon: const Icon(Icons.favorite_border), onPressed: openWishlist),
          IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: openCart),
=======
        title: const Text('SwiftCart', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: openWishlist),
          IconButton(icon: const Icon(Icons.shopping_cart_outlined), onPressed: openCart),
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
<<<<<<< HEAD
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Shop by Category",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.8, // Adjusted for image display
                physics: const NeverScrollableScrollPhysics(),
                children: baseCategories.map((category) {
                  return GestureDetector(
                    onTap: () => openProductList(
                        category['name'], baseProducts[category['name']]!),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          // Category Image
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16)),
                            child: Image.asset(
                              category['image'],
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Container(
                                height: 120,
                                color: Colors.grey[300],
                                child: Icon(
                                  category['icon'],
                                  size: 40,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              category['name'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 32),
              const Text(
                "Browse by Category",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Column(
                children: browseCategories.entries.map((entry) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      title: Text(entry.key),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () => openSubcategory(entry.key, entry.value),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
=======
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Shop by Category", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.2,
              physics: const NeverScrollableScrollPhysics(),
              children: baseCategories.map((name) {
                return GestureDetector(
                  onTap: () => openProductList(name, baseProducts[name]!),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Icon(Icons.shopping_bag_outlined, size: 40, color: Colors.blueAccent),
                      const SizedBox(height: 10),
                      Text(name, textAlign: TextAlign.center),
                    ]),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 32),
            const Text("Browse by Category", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Column(
              children: browseCategories.entries.map((entry) {
                return ListTile(
                  title: Text(entry.key),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () => openSubcategory(entry.key, entry.value),
                );
              }).toList(),
            ),
          ]),
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
        ),
      ),
    );
  }
}

class SubcategoryPage extends StatelessWidget {
  final String category;
  final Map<String, List<Product>> subcategories;
  final List<Product> cart;
  final List<Product> wishlist;

<<<<<<< HEAD
  const SubcategoryPage({
    super.key,
    required this.category,
    required this.subcategories,
    required this.cart,
    required this.wishlist,
  });
=======
  const SubcategoryPage({super.key, required this.category, required this.subcategories, required this.cart, required this.wishlist});
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: ListView(
        children: subcategories.entries.map((entry) {
<<<<<<< HEAD
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              title: Text(entry.key),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductListPage(
                      category: entry.key,
                      products: entry.value,
                      cart: cart,
                      wishlist: wishlist,
                    ),
                  ),
                );
              },
            ),
=======
          return ListTile(
            title: Text(entry.key),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductListPage(
                    category: entry.key,
                    products: entry.value,
                    cart: cart,
                    wishlist: wishlist,
                  ),
                ),
              );
            },
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
          );
        }).toList(),
      ),
    );
  }
}

class ProductListPage extends StatelessWidget {
  final String category;
  final List<Product> products;
  final List<Product> cart;
  final List<Product> wishlist;

<<<<<<< HEAD
  const ProductListPage({
    super.key,
    required this.category,
    required this.products,
    required this.cart,
    required this.wishlist,
  });
=======
  const ProductListPage({super.key, required this.category, required this.products, required this.cart, required this.wishlist});
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (_, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
<<<<<<< HEAD
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  // Product Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      product.imageUrl,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 80,
                          height: 80,
                          color: Colors.grey[200],
                          child: const Icon(Icons.image_not_supported),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Product Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Action Buttons
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          wishlist.contains(product)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: wishlist.contains(product) ? Colors.red : null,
                        ),
                        onPressed: () {
                          if (!wishlist.contains(product)) {
                            wishlist.add(product);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text('${product.name} added to wishlist'),
                              ),
                            );
                          } else {
                            wishlist.remove(product);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    '${product.name} removed from wishlist'),
                              ),
                            );
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_shopping_cart),
                        onPressed: () {
                          cart.add(product);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${product.name} added to cart'),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
=======
            child: ListTile(
              title: Text(product.name),
              subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {
                    if (!wishlist.contains(product)) wishlist.add(product);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${product.name} added to wishlist')));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    cart.add(product);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${product.name} added to cart')));
                  },
                ),
              ]),
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
            ),
          );
        },
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> cart;

  const CartPage({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    double total = cart.fold(0, (sum, p) => sum + p.price);

    return Scaffold(
      appBar: AppBar(title: const Text("Cart")),
      body: cart.isEmpty
          ? const Center(child: Text("Your cart is empty."))
          : Column(
<<<<<<< HEAD
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (_, index) {
                      final product = cart[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        child: ListTile(
                          leading: Image.asset(
                            product.imageUrl,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.image_not_supported),
                          ),
                          title: Text(product.name),
                          subtitle:
                              Text("\$${product.price.toStringAsFixed(2)}"),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              cart.removeAt(index);
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => CartPage(cart: cart)));
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text("Total: \$${total.toStringAsFixed(2)}",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 12),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Buy Now")),
                    ],
                  ),
                )
              ],
            ),
=======
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (_, index) {
                final product = cart[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      cart.removeAt(index);
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (_) => CartPage(cart: cart)));
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("Total: \$${total.toStringAsFixed(2)}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                ElevatedButton(onPressed: () {}, child: const Text("Buy Now")),
              ],
            ),
          )
        ],
      ),
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
    );
  }
}

class WishlistPage extends StatelessWidget {
  final List<Product> wishlist;

  const WishlistPage({super.key, required this.wishlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wishlist")),
      body: wishlist.isEmpty
          ? const Center(child: Text("Your wishlist is empty."))
          : ListView.builder(
<<<<<<< HEAD
              itemCount: wishlist.length,
              itemBuilder: (_, index) {
                final product = wishlist[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: ListTile(
                    leading: Image.asset(
                      product.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.image_not_supported),
                    ),
                    title: Text(product.name),
                    subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                  ),
                );
              },
            ),
=======
        itemCount: wishlist.length,
        itemBuilder: (_, index) {
          final product = wishlist[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
          );
        },
      ),
>>>>>>> bb08fbcda104dac2d45a05d0bd4eb58bfdf48586
    );
  }
}
