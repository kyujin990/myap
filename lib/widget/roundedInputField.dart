import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key key,
    @required EdgeInsets defaultPadding,
    @required TextEditingController controller,
    @required String hint,
    @required IconData icon,
  })  : _defaultPadding = defaultPadding,
        _controller = controller,
        _hint = hint,
        _icon = icon,
        super(key: key);

  final EdgeInsets _defaultPadding;
  final TextEditingController _controller;
  final String _hint;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _defaultPadding,
      child: Column(
        children: [
          TextField(
            controller: _controller,
            style: TextStyle(
              color: Colors.white,
            ),
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 6, 0),
                child: Icon(
                  _icon,
                  size: 32,
                  color: Colors.white,
                ),
              ),
              hintText: _hint,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              hintStyle: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
