import 'package:shoping_app/utils/export_packages.dart.dart';

class DefaultTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final EdgeInsets contentPadding;
  final Widget? prefix;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final double prefixMaxWidth;
  final double suffixMaxWidth;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool hasError;
  final bool isObscure;
  final InputDecoration? inputDecoration;
  final TextInputType? keyboardType;
  final String title;
  final double? height;
  final int? maxLines;
  final int? maxLength;
  final bool autoFocus;
  final FocusNode? focusNode;
  final TextAlignVertical? textAlignVertical;
  final bool? expands;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final bool showCount;
  final TextInputAction? textInputAction;
  final Color fillColor;
  final Color cursorColor;
  final Color focusColor;
  final Color enabledBorder;
  final bool readOnly;
  final String? Function(String?)? validator;
  final bool hasSuffixIcon;
  final String? counterText;
  final VoidCallback? onTap;

  const DefaultTextField({
    this.onTap,
    this.autoFocus = false,
    this.hasSuffixIcon = false,
    this.showCount = false,
    this.readOnly = false,
    this.focusNode,
    this.textInputAction,
    this.maxLengthEnforcement,
    this.validator,
    this.counterText = '',
    required this.controller,
    required this.onChanged,
    this.prefix,
    this.title = '',
    this.contentPadding = const EdgeInsets.all(12),
    this.inputFormatters,
    this.suffix,
    this.prefixMaxWidth = 40,
    this.suffixMaxWidth = 40,
    this.hintStyle,
    this.hintText,
    this.style,
    this.isObscure = false,
    this.hasError = false,
    this.inputDecoration,
    this.keyboardType,
    this.height,
    this.maxLines,
    this.maxLength,
    this.textAlignVertical,
    this.expands,
    this.fillColor = white,
    this.cursorColor = black,
    this.focusColor = black,
    this.enabledBorder = black,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty) ...[
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
        ],
        SizedBox(
          height: height,
          child: TextFormField(
            onTap: onTap,
            readOnly: readOnly,
            expands: expands ?? false,
            maxLengthEnforcement: maxLengthEnforcement,
            textAlignVertical: textAlignVertical,
            focusNode: focusNode,
            autofocus: autoFocus,
            controller: controller,
            onChanged: onChanged,
            validator: validator,
            textInputAction: textInputAction,
            style: style ??
                Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16,
                      decorationThickness: 0,
                    ),
            inputFormatters: inputFormatters,
            obscureText: isObscure,
            keyboardType: keyboardType,
            maxLength: maxLength,
            maxLines: isObscure ? 1 : maxLines,
            cursorColor: cursorColor,
            cursorWidth: 1,
            cursorHeight: 20,
            decoration: inputDecoration ??
                InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: hasError ? black : grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: hasError ? black : focusColor),
                  ),
                  hintText: hintText,
                  hintStyle: hintStyle ??
                      Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 16),
                  contentPadding: contentPadding,
                  suffixIconConstraints:
                      BoxConstraints(maxWidth: suffixMaxWidth),
                  suffixIcon: hasSuffixIcon
                      ? const SizedBox()
                      : Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: suffix,
                        ),
                  fillColor: fillColor,
                  filled: true,
                  prefixIconConstraints:
                      BoxConstraints(maxWidth: prefixMaxWidth),
                  prefixIcon: prefix,
                  counterText: counterText,
                ),
          ),
        ),
      ],
    );
  }
}
