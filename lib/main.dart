import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'app_theme.dart'; // Ensure this import is added

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(375, 812), // Set the design size (optional)
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), // Use the light theme
      darkTheme: ThemeData.dark(), // Use the dark theme
      themeMode: ThemeMode.system, // Follow the system theme mode (Light/Dark)
      home: ExpenseTracker(),
    );
  }
}

class ExpenseTracker extends StatefulWidget {
  @override
  _ExpenseTrackerState createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  String selectedCategory = "Needs";
  Map<String, bool> isDropdownOpen = {
    "Groceries": false,
    "Utilities": false,
    "House Rent": false,
    "Restaurant": false,
    "Games": false,
    "Savings": false,
    "Miscellaneous": false,
  };

  double totalIncome = 50000;
  double needBudget = 25000;
  double wantBudget = 15000;
  double savingBudget = 10000;

  Map<String, List<Map<String, String>>> transactions = {
    "Needs": [
      {"name": "Manoj Kumar", "amount": "₹459.00", "date": "Today, 14:40"},
      {"name": "Manoj Kumar", "amount": "₹459.00", "date": "Today, 14:40"},
      {"name": "Electricity", "amount": "₹1500.00", "date": "Yesterday"},
      {"name": "Water", "amount": "₹500.00", "date": "2 days ago"},
      {"name": "Monthly Rent", "amount": "₹13500.00", "date": "1st Jan"},
    ],
    "Wants": [
      {"name": "Dinner", "amount": "₹1200.00", "date": "Last Week"},
      {"name": "Lunch", "amount": "₹800.00", "date": "2 Weeks Ago"},
      {"name": "Game Purchase", "amount": "₹2500.00", "date": "Last Month"},
    ],
    "Savings": [
      {"name": "Deposit", "amount": "₹5000.00", "date": "Last Month"},
    ],
    "Unknown": [
      {"name": "Laptop repair", "amount": "₹1000.00", "date": "10th January 2025"},
      {"name": "Gift for a friend", "amount": "₹500.00", "date": "5th January 2025"},
      {"name": "Late payment fee", "amount": "₹200.00", "date": "8th January 2025"},
    ],
  };

  double _calculateCategoryTotal(String category) {
    return transactions[category]?.fold(
            0.0, (sum, item) => sum! + (double.parse(item['amount']!.replaceAll('₹', '')))) ??
        0.0;
  }

  @override
  Widget build(BuildContext context) {
    double selectedPercentage = 1.0;
    double spentAmount = 0;
    String progressLabel = "";

    switch (selectedCategory) {
      case "Needs":
        selectedPercentage = 0.5; // 50% for Needs
        spentAmount = _calculateCategoryTotal("Needs");
        progressLabel = "Spent ₹${spentAmount.toInt()} of ₹${needBudget.toInt()}";
        break;
      case "Wants":
        selectedPercentage = 0.3; // 30% for Wants
        spentAmount = _calculateCategoryTotal("Wants");
        progressLabel = "Spent ₹${spentAmount.toInt()} of ₹${wantBudget.toInt()}";
        break;
      case "Savings":
        selectedPercentage = 0.2; // 20% for Savings
        spentAmount = _calculateCategoryTotal("Savings");
        progressLabel = "Saved ₹${spentAmount.toInt()} of ₹${savingBudget.toInt()}";
        break;
      case "Unknown":
        selectedPercentage = 0.0; // No specific percentage
        spentAmount = _calculateCategoryTotal("Unknown");
        progressLabel = "Saved ₹${spentAmount.toInt()} of ₹${savingBudget.toInt()}";
        break;
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor, // Use theme background color
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor, // Use theme primary color
        title: const Text("Spending Habits"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Donut Chart
          CircularPercentIndicator(
            radius: 85.0.r,
            lineWidth: 30.0.w,
            animation: true,
            percent: selectedPercentage,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Monthly Income",
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
                Text(
                  "₹${totalIncome.toInt()}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Theme.of(context).colorScheme.secondary, // Use theme secondary color
          ),
          const SizedBox(height: 10),
          // Budget Division Label
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Text(
              "Your monthly budget is divided amongst Needs (50%), Wants (30%), and Savings (20%) of your monthly income respectively.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0.sp,
                color: Theme.of(context).textTheme.bodyMedium?.color, // Use theme text color
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Category Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCategoryButton("Needs"),
              _buildCategoryButton("Wants"),
              _buildCategoryButton("Savings"),
              _buildCategoryButton("Unknown"),
            ],
          ),
          const SizedBox(height: 20),
          // Progress Bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: LinearPercentIndicator(
              lineHeight: 20.0.h,
              animation: true,
              percent: spentAmount /
                  (selectedCategory == "Needs"
                      ? needBudget
                      : selectedCategory == "Wants"
                          ? wantBudget
                          : savingBudget),
              center: Text(
                progressLabel,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Theme.of(context).colorScheme.secondary, // Use theme secondary color
              backgroundColor: Colors.grey[300],
            ),
          ),
          const SizedBox(height: 20),
          // Category Details
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: _buildCategoryItems(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildCategoryItems() {
    switch (selectedCategory) {
      case "Needs":
        return [
          _buildCategoryItem(
            "Groceries",
            "assets/groceries.jpg",
            [
              _buildTransactionItem("Manoj Kumar", "₹459.00", "Today, 14:40"),
              _buildTransactionItem("Manoj Kumar", "₹459.00", "Today, 14:40"),
              _buildTransactionItem("Manoj Kumar", "₹459.00", "Today, 14:40"),
            ],
          ),
          _buildCategoryItem(
            "Utilities",
            "assets/utilities.jpg",
            [
              _buildTransactionItem("Electricity", "₹1500.00", "Yesterday"),
              _buildTransactionItem("Water", "₹500.00", "2 days ago"),
            ],
          ),
          _buildCategoryItem(
            "House Rent",
            "assets/house_rent.jpg",
            [
              _buildTransactionItem("Monthly Rent", "₹13500.00", "1st Jan"),
            ],
          ),
        ];
      case "Wants":
        return [
          _buildCategoryItem(
            "Restaurant",
            "assets/restaurant.jpg",
            [
              _buildTransactionItem("Dinner", "₹1200.00", "Last Week"),
              _buildTransactionItem("Lunch", "₹800.00", "2 Weeks Ago"),
            ],
          ),
          _buildCategoryItem(
            "Games",
            "assets/games.jpg",
            [
              _buildTransactionItem("Game Purchase", "₹2500.00", "Last Month"),
            ],
          ),
        ];
      case "Savings":
        return [
          _buildCategoryItem(
            "Savings",
            "assets/savings.jpg",
            [
              _buildTransactionItem("Deposit", "₹5000.00", "Last Month"),
            ],
          ),
        ];
      case "Unknown":
        return [
          _buildCategoryItem(
            "Miscellaneous",
            "assets/miscellaneous.jpg",
            [
              _buildTransactionItem("Laptop repair", "₹1000.00", "10th January 2025"),
              _buildTransactionItem("Gift for a friend", "₹500.00", "5th January 2025"),
              _buildTransactionItem("Late payment fee", "₹200.00", "8th January 2025"),
            ],
          ),
        ];
      default:
        return [];
    }
  }

  Widget _buildCategoryButton(String category) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedCategory = category;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: selectedCategory == category
            ? Theme.of(context).primaryColor
            : Colors.grey[300],
      ),
      child: Text(
        category,
        style: TextStyle(
          color: selectedCategory == category ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
      String title, String imagePath, List<Widget> transactions) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen[title] = !(isDropdownOpen[title] ?? false);
            });
          },
          child: Stack(
            children: [
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 10.h,
                left: 10.w,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 10.h,
                right: 10.w,
                child: Icon(
                  isDropdownOpen[title] ?? false
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        if (isDropdownOpen[title] ?? false)
          Padding(
            padding: EdgeInsets.all(10.0.w),
            child: Column(
              children: transactions,
            ),
          ),
      ],
    );
  }

  Widget _buildTransactionItem(String name, String amount, String date) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(Icons.person, color: Colors.white, size: 24.sp),
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 14.sp),
        ),
        subtitle: Text(
          date,
          style: TextStyle(fontSize: 12.sp, color: Colors.grey),
        ),
        trailing: Text(
          amount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}