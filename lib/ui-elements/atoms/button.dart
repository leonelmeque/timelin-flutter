import 'package:flutter/material.dart';
import 'package:timelin/ui-elements/components.dart';

/// Enumerable for button color variant
enum ButtonVariant { primary, secondary, danger }

/// Enumerable for button size
enum ButtonSize { sm, md, lg }

/// return color variant based on the requested [ButtonVariant]
int returnVariant(ButtonVariant variant) {
  switch (variant) {
    case ButtonVariant.primary:
      return Colours.p300;
    case ButtonVariant.secondary:
      return Colours.p75;
    case ButtonVariant.danger:
      return Colours.d300;
    default:
      return Colours.p300;
  }
}

/// return size base on the provided [ButtonSize]
double returnSize(ButtonSize size) {
  switch (size) {
    case ButtonSize.sm:
      return Spacing.size8;
    case ButtonSize.md:
      return Spacing.size16;
    case ButtonSize.lg:
      return Spacing.size24;
    default:
      return Spacing.size8;
  }
}

double returnFontSize(ButtonSize size) {
  switch (size) {
    case ButtonSize.sm:
      return Spacing.size4;
    case ButtonSize.md:
      return Spacing.size16;
    case ButtonSize.lg:
      return Spacing.size16;
    default:
      return Spacing.size16;
  }
}

class Button extends StatelessWidget {
  final String label;
  final ButtonVariant variant;
  final ButtonSize size;
  final Function? onPressed;

  /// Button ui element
  const Button(
      {Key? key,
      required this.label,
      required this.variant,
      required this.size,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextButton(
          onPressed: () {
            if (onPressed != null) {
              onPressed!();
            }
          },
          style: TextButton.styleFrom(
              backgroundColor: Color(returnVariant(variant)),
              padding: EdgeInsets.all(returnSize(size)),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(Spacing.size4)))),
          child: Text(
            label,
            style: TextStyle(
                color: const Color(Colours.white),
                fontWeight: FontWeight.bold,
                fontSize: returnFontSize(size)),
          )),
    );
  }
}

Widget confirmDialog(BuildContext context) => AlertDialog(
      alignment: Alignment.bottomCenter,
      title: const Text('Are you sure you called?'),
      content: const Text("Yes I am sure"),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Turn me off'),
        )
      ],
    );
