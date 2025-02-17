import 'package:flutter/material.dart';

 
const _borderRadius = BorderRadius.all(Radius.circular(50.0));
 

 
class AppBarActionButton extends StatelessWidget {
  final IconData? icon;
  final String labelText;
  final void Function()? onPressed;
  const AppBarActionButton({
    super.key,
    this.icon,
    this.onPressed,
    required this.labelText,
  });
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: _borderRadius,
      onTap: onPressed ?? () {},
      child: ClipRRect(
        borderRadius: _borderRadius,
        child: ColoredBox(
          color: const Color(0xFFF8EBCB),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 17.0,
              vertical: 5.0,
            ),
            child: icon == null
                ? Text(
                    labelText,
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  )
                : IntrinsicHeight(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Icon(
                            icon,
                            color:  Colors.black45,
                            size: 15.0,
                          ),
                        ),
                        Text(
                          labelText,
                          style: TextStyle(
                            color:  Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
 