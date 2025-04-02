import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../widgets/my_drawer.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search')),
      drawer: MyDrawer(), // Add the drawer here
      body: Center(
        child: Text('Search Screen'),
      ),
    );
  }
}

class ShoppingSearchScreen extends StatefulWidget {
  @override
  _ShoppingSearchScreenState createState() => _ShoppingSearchScreenState();
}

class _ShoppingSearchScreenState extends State<ShoppingSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> _searchResults = [];
  bool _isLoading = false;
  String _errorMessage = '';

  Future<void> _searchShopping(String searchTerm) async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
      _searchResults.clear();
    });

    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:5000/search_shopping'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'search_term': searchTerm}),
      );

      if (response.statusCode == 200) {
        setState(() {
          _searchResults = jsonDecode(response.body)['items'];
        });
      } else {
        setState(() {
          _errorMessage = 'Failed to load search results: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'An error occurred: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopping Search')),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => _searchShopping(_searchController.text),
                ),
              ),
            ),
            SizedBox(height: 16),
            if (_isLoading) CircularProgressIndicator(),
            if (_errorMessage.isNotEmpty)
              Text(
                _errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final item = _searchResults[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (item['image_base64'] != null)
                            Image.memory(
                              base64Decode(item['image_base64']),
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            )
                          else
                            Container(
                              width: 80,
                              height: 80,
                              color: Colors.grey[300],
                              child: Icon(Icons.image_not_supported),
                            ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['title'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                if (item['lprice'] != null)
                                  Text('Price: ${item['lprice']}'),
                                if (item['mallName'] != null)
                                  Text('Mall: ${item['mallName']}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}