import 'package:flutter/material.dart';
import 'quote.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes=[
    Quote(author:'smit sekhadia', text:"life's too short,LIVE!"),
    Quote(author:'smit sekhadia', text:'In this world you come with nothing and leave with nothing.So weather you acheive in between be it good or bad,its net profit afterall.'),
    Quote(author:'smit sekhadia', text:'Be fucking greatful!'),

  ];
  Widget quoteTemplate(quote){
    return  Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              quote.text,
              style:TextStyle(
                fontSize: 18,
                color:Colors.grey[600],
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height:6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color:Colors.grey[600],
              ),


            ),
            SizedBox(height:6.0),
              ElevatedButton.icon(
                onPressed: () {},
                 label: Text('delete quote'),
                icon: Icon(Icons.delete_rounded),
                ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('quotes'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body:Column(
        children: quotes.map((quote) {
          return quoteTemplate(quote);
        }).toList(),
      ),
    );
  }
}

