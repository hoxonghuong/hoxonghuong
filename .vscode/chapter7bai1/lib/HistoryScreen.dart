import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Counter.dart';  // Đảm bảo tệp chứa lớp Counter đã được import

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lịch sử tăng giá trị'),
      ),
      body: Consumer<Counter>(
        builder: (context, counter, child) {
          return ListView.builder(
            itemCount: counter.history.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Giá trị: ${counter.history[index]}'),
              );
            },
          );
        },
      ),
    );
  }
}
