import 'package:material_ui/material_ui.dart';

class BotonBorrar extends StatelessWidget{

  final IconData icono;
  final VoidCallback? onPressed;

  const new({
    super.key,
    required this.icono,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 5,
      onPressed: onPressed,
      child: Icon(icono),
    );
  }
}