import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F5F8),
      body: SafeArea(
        child: Column(
          children: [
            /// Top Image Section
            Stack(
              children: [
                Container(
                  height: 392.h,
                  width: 353.w,
                  color: Colors.white,
                  child: Image.asset("assets/images/Product 2.png",fit: BoxFit.contain,),
                ),

                /// Back Button
                Positioned(
                  top: 15,
                  left: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),

            /// Bottom Details Section
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xffE8EEF4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [

                    /// Product Name + Quantity
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [

                        const Text(
                          "Product name",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          children: [
                            quantityButton(
                                icon: Icons.remove,
                                onTap: (){}

                            ),

                            Padding(
                              padding:
                              const EdgeInsets.symmetric(
                                  horizontal: 12),
                              child: Text(
                                "ssdf",
                                style: const TextStyle(
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    const SizedBox(height: 10),

                    /// Description
                    const Text(
                      "Its simple and elegant shape makes it perfect for those of you who like you who want minimalist clothes Read More...",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Selected Size
                    const Text(
                      "Selected Size",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                        BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "36kg",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const Spacer(),

                    /// Add To Cart Button
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                          const Color(0xff1E88E5),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart),
                        label: const Text(
                          "Add to Cart | \$162.99",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget quantityButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
    ),
    child: IconButton(
      icon: Icon(icon, size: 18),
      onPressed: onTap,
    ),
  );}
}