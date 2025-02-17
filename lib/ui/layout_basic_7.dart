import 'package:flutter/material.dart';

class LayoutBasic7 extends StatefulWidget {
  const LayoutBasic7({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LayoutBasic7State createState() => _LayoutBasic7State();
}

class _LayoutBasic7State extends State<LayoutBasic7> {
  final ScrollController _scrollController = ScrollController();
  final List<int> _itemList = List.generate(10, (index) => index);
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !_isLoading) {
      _loadMoreItems();
    }
  }

  void _loadMoreItems() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _itemList.addAll(List.generate(4, (index) => _itemList.length + index));
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vi Hong Minh",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              Text(
                "Hot Reload",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              GridView.builder(
                controller: _scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: _itemList.length + (_isLoading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == _itemList.length) {
                    return SizedBox.shrink();
                  } else {
                    return AnimatedOpacity(
                      opacity: 1.0,
                      duration: Duration(milliseconds: 500),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.white70,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    );
                  }
                },
              ),
              if (_isLoading)
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
