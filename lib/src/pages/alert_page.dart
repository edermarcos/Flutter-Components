import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
			body: Center(
				child: RaisedButton(
					child: Text('Alert'),
					color: Colors.blue,
					textColor: Colors.white,
					shape: StadiumBorder(),
					onPressed: () => _showAlert(context)
				),
			),
    );
  }
  
  void _showAlert(BuildContext context) {
  	showDialog(
			context: context,
			barrierDismissible: true,
			builder: (context) {
				return AlertDialog(
					shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
					title: Text('Titulo'),
					content: Column(
						mainAxisSize: MainAxisSize.min,
						children: <Widget>[
							Text('Este es el contenido de la alerta'),
							FlutterLogo(size: 100)
						],
					),
					actions: <Widget>[
						FlatButton(
							onPressed: () => Navigator.of(context).pop(),
							child: Text('Cancelar')
						),
						FlatButton(
							onPressed: () => Navigator.of(context).pop(),
							child: Text('Ok')
						)
					],
				);
			}
		);
	}
}
