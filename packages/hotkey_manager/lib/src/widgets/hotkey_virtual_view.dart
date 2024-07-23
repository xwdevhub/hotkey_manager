import 'package:flutter/material.dart';
import 'package:hotkey_manager_platform_interface/hotkey_manager_platform_interface.dart';

class _VirtualKeyView extends StatelessWidget {
  const _VirtualKeyView({
    required this.keyLabel,
  });

  final String keyLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        border: Border.all(
          color: Theme.of(context).dividerColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(3),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0.0, 1.0),
          ),
        ],
      ),
      child: Text(
        keyLabel,
<<<<<<< HEAD:packages/hotkey_manager/lib/src/widgets/hotkey_virtual_view.dart
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyMedium?.color,
          fontSize: 12,
        ),
=======
        // style: TextStyle(
        //   // color: Theme.of(context).textTheme.bodyText2?.color,
        //   fontSize: 12,
        // ),
>>>>>>> 19bd384 (fix:删除flutter3.22.3 报错的代码):lib/src/widgets/hotkey_virtual_view.dart
      ),
    );
  }
}

class HotKeyVirtualView extends StatelessWidget {
  const HotKeyVirtualView({
    super.key,
    required this.hotKey,
  });

  final HotKey hotKey;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: [
        for (HotKeyModifier modifier in hotKey.modifiers ?? [])
          _VirtualKeyView(
            keyLabel: modifier.physicalKeys.first.keyLabel,
          ),
        _VirtualKeyView(
          keyLabel: hotKey.physicalKey.keyLabel,
        ),
      ],
    );
  }
}
