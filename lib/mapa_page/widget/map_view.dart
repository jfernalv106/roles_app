import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:roles/bloc/mapa/mapa_bloc.dart';

class MapView extends StatelessWidget {
  final Set<Polygon> polygons;
  final LatLng initialLocation;
  const MapView(
      {super.key, required this.polygons, required this.initialLocation});

  @override
  Widget build(BuildContext context) {
    final mapBloc = BlocProvider.of<MapaBloc>(context);
    final CameraPosition initialCameraPosition =
        CameraPosition(target: initialLocation, zoom: 15);
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.62,
      child: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        compassEnabled: false,
        myLocationEnabled: true,
        zoomControlsEnabled: true,
        myLocationButtonEnabled: true,

        onMapCreated: (controller) =>
            mapBloc.add(OnMapInitialzedEvent(controller)),

        polygons: polygons,

        // TODO: Markers
        // TODO: polylines
        // TODO: Cuando se mueve el mapa
      ),
    );
  }
}
