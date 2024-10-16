import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailSceen extends StatelessWidget{
  final Candi candi;

  const DetailSceen({super.key ,required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //tombol back custom
              Padding(
                padding: 
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100]?.withOpacity(0.8),
                        shape: BoxShape.circle),
                      child: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                    )
                  ],
                ),
          
          Padding(
            padding: 
              const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Info atas
                  const SizedBox(), //Sized Box
                  Row(), //Row
                  //Info Tengah
                  Row(children: [
                    Icon(Icons.place, color: Colors.red,),
                    SizedBox(width: 8),
                    SizedBox(width: 70,
                      child: Text('lokasi', style: 
                    TextStyle(fontWeight: FontWeight.bold),),),
                    Text(': ${candi.location}')
                  ],),
                  Row(children: [
                    Icon(Icons.calendar_month, color: Colors.green,),
                    SizedBox(width: 8),
                    SizedBox(width: 70,
                      child: Text('Dibangun', style: 
                        TextStyle(fontWeight: FontWeight.bold),),),
                    Text(': ${candi.built}'),],),
                  Row(children: [],),
                  SizedBox(height: 16,),
                  Divider(color: Colors.deepPurple.shade100,),
                  const SizedBox(height: 16,),

                  //Info Bawah


                ],
              ),)
        ],
      ),
    );
  }
}