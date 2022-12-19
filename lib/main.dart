import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Completer<GoogleMapController> _controller = Completer();
    const cameraPosition = CameraPosition(
      target: LatLng(23.7322, 90.4166),
      zoom: 14.4746,
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GoogleMap(
          initialCameraPosition: cameraPosition,
          onMapCreated: (controller) {
            _controller.complete(controller);
          },
          markers: {
            Marker(
              markerId: MarkerId('project1'),
              position: const LatLng(23.729211164246585, 90.40874895549),
              infoWindow: const InfoWindow(
                title:
                    'JICA Support Program 3 for Strengthening Mathematics and Science Education in Primary Education Project',
                snippet:
                    'National level of academic skills and knowledge obtained in primary mathematics and science is improved.',
              ),
            ),
            Marker(
              markerId: MarkerId('project1'),
              position: const LatLng(23.801862310944188, 90.35700996898726),
              infoWindow: const InfoWindow(
                title:
                    'JICA Support Program 3 for Strengthening Mathematics and Science Education in Primary Education Project',
                snippet:
                    'National level of academic skills and knowledge obtained in primary mathematics and science is improved.',
              ),
            ),
            Marker(
              markerId: MarkerId('project2'),
              position: const LatLng(23.768773179764562, 90.37269632665758),
              infoWindow: const InfoWindow(
                title:
                    'Project for Capacity Building of Nursing Services Phase 2',
                snippet:
                    'The quality of nursing education is improved in Bangladesh',
              ),
            ),
            Marker(
              markerId: MarkerId('project2'),
              position: const LatLng(23.733211657612223, 90.40993638432778),
              infoWindow: const InfoWindow(
                title:
                    'Project for Capacity Building of Nursing Services Phase 2',
                snippet:
                    'The quality of nursing education is improved in Bangladesh',
              ),
            ),
            Marker(
              markerId: MarkerId('project3'),
              position: const LatLng(23.728881264793493, 90.40888399782175),
              infoWindow: const InfoWindow(
                title:
                    'The Project for Strengthening Health Systems through Organizing Communities',
                snippet:
                    'The Health status of population in Bangladesh is improved',
              ),
            ),
            Marker(
              markerId: MarkerId('project4'),
              position: const LatLng(23.728881264793493, 90.40888399782175),
              infoWindow: const InfoWindow(
                title: 'Safe Motherhood Promotion Project',
                snippet:
                    'Approaches of Reproductive Health (RH) services extracted from the Project are standardized and applied to other districts.',
              ),
            ),
            Marker(
              markerId: MarkerId('project5'),
              position: const LatLng(23.728881264793493, 90.40888399782175),
              infoWindow: const InfoWindow(
                title: 'Safe Motherhood Promotion Project Phase 2',
                snippet:
                    'Maternal and neonatal health status is improved in Bangladesh.',
              ),
            ),
            Marker(
              markerId: MarkerId('project6'),
              position: const LatLng(23.728407931193587, 90.40787482665709),
              infoWindow: const InfoWindow(
                title: 'National Integrity Strategy Support Project Phase 2',
                snippet:
                    'Transparency and accountability system of the public administration and associated institutions is enhanced.',
              ),
            ),
            Marker(
              markerId: MarkerId('project7'),
              position: const LatLng(23.7284766533655, 90.40910864263893),
              infoWindow: const InfoWindow(
                title:
                    'Project for Capacity Development of City Corporations (C4C)',
                snippet:
                    'Functions and organizational structure of the target City Corporations (CCs) are optimized.',
              ),
            ),
            Marker(
              markerId: MarkerId('project8'),
              position: const LatLng(23.7708680271343, 90.38098892695923),
              infoWindow: const InfoWindow(
                title:
                    'Strengthening Public Investment Management System (SPIMS) Project Phase 2',
                snippet:
                    'Public investment contributes to achieving mid-long term development plan.',
              ),
            ),
            Marker(
              markerId: MarkerId('project9'),
              position: const LatLng(23.728917093659554, 90.40956388277749),
              infoWindow: const InfoWindow(
                title:
                    'The Integrated Energy and Power Master Plan Project in Bangladesh',
                snippet:
                    'A low/zero carbon energy demand/supply system will be established based on the premise of ensuring energy security and economic viability.',
              ),
            ),
            Marker(
              markerId: MarkerId('project10'),
              position: const LatLng(23.728917093659554, 90.40956388277749),
              infoWindow: const InfoWindow(
                title:
                    'The Project for Gas Network System Digitalization and Improvement of Operational Efficiency in Gas Sector in Bangladesh',
                snippet:
                    'Reliable, effective and efficient gas and power supply for economic development of the country is achieved.',
              ),
            ),
          }),
    );
  }
}
