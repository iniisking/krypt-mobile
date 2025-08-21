import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class SendTextField extends StatelessWidget {
  const SendTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 16.sp,
        color: textColor1,
        fontWeight: FontWeight.w700,
      ),
      cursorColor: buttonColor,
      cursorWidth: 2.5.w,
      keyboardType: TextInputType.multiline,
      minLines: 1,
      maxLines: null, // null = infinite growth

      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: textColor2, width: 1.w),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: textColor2, width: 1.w),
        ),
        hintText: 'username or address',
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: textColor2,
          fontWeight: FontWeight.w600,
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 0.w, minHeight: 0.h),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 8.w, right: 4.w),
          child: CustomTextWidget(
            text: 'To:',
            fontSize: 14.sp,
            color: textColor2,
            fontWeight: FontWeight.w600,
          ),
        ),
        suffixIconConstraints: BoxConstraints(minWidth: 0.w, minHeight: 0.h),
        suffixIcon: Padding(
          padding: EdgeInsets.only(left: 4.w, right: 8.w),
          child: Assets.images.scan.image(
            width: 20.w,
            height: 20.h,
            color: whiteIconColor,
          ),
        ),
      ),
    );
  }
}

class EnterAmountTextField extends StatelessWidget {
  const EnterAmountTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: TextStyle(fontSize: 30, color: textColor1),
        decoration: InputDecoration(
          border: InputBorder.none, // 👈 no border
        ),
      ),
    );
  }
}

class AuthTextFormField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int fontSize;
  final Color hintTextColor;
  final Color primaryBorderColor;
  final Color errorBorderColor;

  const AuthTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.maxLines = 1,
    this.fontSize = 17,
    this.hintTextColor = const Color(0xFF9A9A9A),
    required this.primaryBorderColor,
    required this.errorBorderColor,
  });

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      obscureText: _isObscured,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      maxLines: widget.maxLines,
      cursorColor: secondaryColor,
      style: TextStyle(
        fontSize: widget.fontSize.toDouble(),
        overflow: TextOverflow.ellipsis,
        color: secondaryColor,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: widget.hintTextColor,
          fontSize: widget.fontSize.toDouble(),
          letterSpacing: 0,
          overflow: TextOverflow.ellipsis,
        ),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        focusedBorder: _buildBorder(secondaryColor),
        focusedErrorBorder: _buildBorder(widget.errorBorderColor),
        enabledBorder: _buildBorder(widget.primaryBorderColor),
        errorBorder: _buildBorder(widget.errorBorderColor),
        suffixIcon: widget.obscureText
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: _isObscured
                      ? Assets.images.hide.image(
                          height: 20.h,
                          width: 20.w,
                          color: widget.hintTextColor,
                        )
                      : Assets.images.view.image(
                          height: 20.h,
                          width: 20.w,
                          color: widget.hintTextColor,
                        ),
                ),
              )
            : widget.suffixIcon,
        filled: true,
        fillColor: const Color(0xFF232323),
      ),
    );
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(17.r),
      borderSide: BorderSide(color: color),
    );
  }
}

class CodeVeriInput extends StatefulWidget {
  const CodeVeriInput({super.key});

  @override
  State<CodeVeriInput> createState() => _CodeVeriInputState();
}

class _CodeVeriInputState extends State<CodeVeriInput> {
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  // Method to handle pasting OTP
  void _handlePaste() async {
    ClipboardData? clipboardData = await Clipboard.getData(
      Clipboard.kTextPlain,
    );
    if (clipboardData != null &&
        clipboardData.text != null &&
        clipboardData.text!.isNotEmpty) {
      // Extract only digits from pasted text
      String pastedText = clipboardData.text!.replaceAll(RegExp(r'\D'), '');

      if (pastedText.isEmpty) return;

      // Take only up to 4 digits since this is a 4-digit OTP
      if (pastedText.length > 4) {
        pastedText = pastedText.substring(0, 4);
      }

      // Update UI with the pasted digits
      setState(() {
        // Clear existing values first
        for (var controller in _controllers) {
          controller.clear();
        }

        // Distribute pasted digits
        for (int i = 0; i < pastedText.length; i++) {
          _controllers[i].text = pastedText[i];
        }
      });

      // Move focus to appropriate field or unfocus if all fields filled
      if (pastedText.length < 4) {
        _focusNodes[pastedText.length].requestFocus();
      } else {
        FocusScope.of(context).unfocus();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: SizedBox(
            width: 70.w,
            height: 80.h,
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                counterText: '', // Hides the character counter
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: greyColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: secondaryColor),
                ),
              ),
              onChanged: (value) {
                if (value.isNotEmpty && index < 3) {
                  _focusNodes[index + 1]
                      .requestFocus(); // Move to the next field
                } else if (value.isEmpty && index > 0) {
                  _focusNodes[index - 1]
                      .requestFocus(); // Move to the previous field
                }
              },
              cursorColor: secondaryColor,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              // Enable context menu customization for paste functionality
              contextMenuBuilder: (context, editableTextState) {
                final List<ContextMenuButtonItem> buttonItems =
                    editableTextState.contextMenuButtonItems;

                // Find paste button if it exists
                final int pasteButtonIndex = buttonItems.indexWhere(
                  (item) => item.type == ContextMenuButtonType.paste,
                );

                if (pasteButtonIndex >= 0) {
                  // Replace original paste button with our custom one
                  buttonItems[pasteButtonIndex] = ContextMenuButtonItem(
                    onPressed: () {
                      _handlePaste();
                    },
                    type: ContextMenuButtonType.paste,
                  );
                }

                return AdaptiveTextSelectionToolbar.buttonItems(
                  anchors: editableTextState.contextMenuAnchors,
                  buttonItems: buttonItems,
                );
              },
            ),
          ),
        );
      }),
    );
  }
}

class SeedPhraseTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int fontSize;
  final Color hintTextColor;
  final Color primaryBorderColor;
  final Color errorBorderColor;

  const SeedPhraseTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.maxLines = null, // Changed to null for unlimited lines
    this.fontSize = 17,
    this.hintTextColor = const Color(0xFF9A9A9A),
    required this.primaryBorderColor,
    required this.errorBorderColor,
  });

  @override
  State<SeedPhraseTextField> createState() => _SeedPhraseTextFieldState();
}

class _SeedPhraseTextFieldState extends State<SeedPhraseTextField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      obscureText: _isObscured,
      controller: widget.controller,
      keyboardType: TextInputType.multiline, // Changed to multiline
      validator: widget.validator,
      minLines: 5, // This sets the minimum height
      maxLines: widget.maxLines,
      cursorColor: secondaryColor,
      textAlignVertical: TextAlignVertical.top, // This aligns text to top
      style: TextStyle(
        fontSize: widget.fontSize.toDouble(),
        color: secondaryColor,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: widget.hintTextColor,
          fontSize: widget.fontSize.toDouble(),
          letterSpacing: 0,
        ),
        alignLabelWithHint: true, // This aligns hint text to top
        isDense: true,
        contentPadding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 18,
          bottom: 18, // Reduced bottom padding for better text alignment
        ),
        focusedBorder: _buildBorder(secondaryColor),
        focusedErrorBorder: _buildBorder(widget.errorBorderColor),
        enabledBorder: _buildBorder(widget.primaryBorderColor),
        errorBorder: _buildBorder(widget.errorBorderColor),
        suffixIcon: widget.obscureText
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: _isObscured
                      ? Assets.images.hide.image(
                          height: 20.h,
                          width: 20.w,
                          color: widget.hintTextColor,
                        )
                      : Assets.images.view.image(
                          height: 20.h,
                          width: 20.w,
                          color: widget.hintTextColor,
                        ),
                ),
              )
            : widget.suffixIcon,
        filled: true,
        fillColor: const Color(0xFF232323),
      ),
    );
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(17.r),
      borderSide: BorderSide(color: color),
    );
  }
}
