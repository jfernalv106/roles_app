import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:roles/bloc/mapa/mapa_bloc.dart';

class MapViewBusqueda extends StatelessWidget {
  final Set<Polygon> polygons;
  final Set<Marker> markers;
  final LatLng initialLocation;
  const MapViewBusqueda(
      {super.key,
      required this.polygons,
      required this.initialLocation,
      required this.markers});

  @override
  Widget build(BuildContext context) {
    final mapBloc = BlocProvider.of<MapaBloc>(context);
    final CameraPosition initialCameraPosition =
        CameraPosition(target: initialLocation, zoom: 15);
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.672,
      child: GoogleMap(
        initialCameraPosition: initialCameraPosition,

        compassEnabled: true,
        myLocationEnabled: true,
        zoomControlsEnabled: true,
        myLocationButtonEnabled: true,
        buildingsEnabled: true,
        indoorViewEnabled: true,
        mapToolbarEnabled: true,
        mapType: MapType.satellite,

        onMapCreated: (controller) =>
            mapBloc.add(OnMapInitialzedEvent(controller)),

        polygons: polygons,
        markers: markers,
        // TODO: Markers
        // TODO: polylines
        // TODO: Cuando se mueve el mapa
      ),
    );
  }
}
