part of 'pages.dart';

class BerandaPage extends StatefulWidget {
  final List<Supplier> suplier;
  BerandaPage(this.suplier);
  
  static const String id = "home_screen";
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  // List item = [];
  
  @override
  Widget build(BuildContext context) {
    var sortedSuplier = widget.suplier;
    sortedSuplier.sort((suplier1, suplier2) => suplier1.name
        .compareTo(suplier2.name));
    return new Scaffold(
      appBar: new AppBar(
        title: const Center(child: Text('Daftar Supplier')),
        actions: <Widget>[
            new IconButton(icon: new Icon(Icons.search, color: Colors.white)),
        ],
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: sortedSuplier.length,
          itemBuilder: (_, index){
            return GestureDetector(
              onTap: ()async{
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profil()));
                //Supplier suplier = Supplier(name: sortedSuplier[index].name, nohp: sortedSuplier[index].nohp);
                //context.bloc<ItemBloc>().add(AmbilItemSuplier(sortedSuplier[index].nohp));
                List<Item> items = await SupplierServices.getItem(sortedSuplier[index].nohp);
                print(items);
                context.bloc<PagesBloc>().add(GoToDetailPage(sortedSuplier[index].name, sortedSuplier[index].nohp, items));
              },
              child: Column(
                children: <Widget>[
                  ListPerson(sortedSuplier[index].name, sortedSuplier[index].nohp),
                  Divider(
                    color: Colors.black,
                  )
                ],
              )
            );
          },
      ),
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: 'Increment Counter',
        onPressed: () { 
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            context.bloc<PagesBloc>().add(GoToAddSuplierPage(AddSuplier()));
          } ));
          
         },
        child: const Icon(Icons.add,
        color: Colors.white),
      ),
    );
  }
}

// class TicketViewer extends StatelessWidget {
//   final List<Ticket> tickets;
//   TicketViewer(this.tickets);
//   @override
//   Widget build(BuildContext context) {
//     var sortedTickets = tickets;
//     sortedTickets.sort((ticket1, ticket2) => ticket1.time
//         .compareTo(ticket2.time)); //mengurutkan ticket menurut waktunya.

//     return ListView.builder(
//       itemCount: sortedTickets.length, //bnyaknya ticket yang sudah diurutkan
//       itemBuilder: (_, index) => GestureDetector(
//         onTap: (){
//           context.bloc<PagesBloc>().add(GoToTicketDetailPage(sortedTickets[index]));
//         },
//               child: Container(
//           margin: EdgeInsets.only(top: index == 0 ? 133 : 20),
//           child: Row(
//             //poster dan detailmovie
//             children: <Widget>[
//               Container(
//                 //gambar poster
//                 width: 70,
//                 height: 90,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     image: DecorationImage(
//                         image: NetworkImage(imageBaseUrl +
//                             'w500' +
//                             sortedTickets[index].movieDetail.posterPath),
//                         fit: BoxFit.cover)),
//               ),
//               SizedBox(width: 16),
//               SizedBox(
//                 width: MediaQuery.of(context).size.width -
//                     2 * defaultMargin -
//                     70 -
//                     16,
//                 child: Column(
//                   //detail movie
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       sortedTickets[index].movieDetail.title,
//                       style: blackTextFont.copyWith(fontSize: 18),
//                       maxLines: 2,
//                       overflow: TextOverflow.clip,
//                     ),
//                     SizedBox(height: 6),
//                     Text(
//                       sortedTickets[index].movieDetail.genresAndLanguage,
//                       style: greyTextFont.copyWith(
//                           fontSize: 12, fontWeight: FontWeight.w400),
//                     ),
//                     SizedBox(height: 6),
//                     Text(
//                       sortedTickets[index].theater.name,
//                       style: greyTextFont.copyWith(
//                           fontSize: 12, fontWeight: FontWeight.w400),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }