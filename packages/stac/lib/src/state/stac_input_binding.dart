import 'package:flutter/widgets.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/src/state/stac_state_reader.dart';
import 'package:stac/src/state/stac_state_writer.dart';
import 'package:stac/src/state/stac_store.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_logger/stac_logger.dart';

/// Connects an input widget to Stac state.
///
/// An input is bound to its `bind` path, or, inside a form, to
/// `$form.<id>` when it has an `id`. A bound form field with a `bind` path
/// also keeps its form value up to date.
class StacInputBinding {
  const StacInputBinding._(
    this._path,
    this._formPath,
    this.value,
    this.hasValue,
  );

  /// The binding of an input at [context], or `null` when it has none.
  ///
  /// Reading the bound value makes [context] rebuild when it changes, so
  /// call it from `build`, `didChangeDependencies` or `didUpdateWidget`.
  static StacInputBinding? resolve(
    BuildContext context, {
    String? bind,
    String? formId,
    bool listen = true,
  }) {
    List<String>? path;
    if (bind != null && bind.trim().isNotEmpty) {
      try {
        path = stacPathSegments(bind);
      } on ArgumentError catch (e) {
        Log.w('bind "$bind" is not a valid state path: ${e.message}');
      }
    }
    final inForm =
        formId != null &&
        formId.isNotEmpty &&
        StacScopeNode.of(context).form != null;
    final formPath = inForm ? <String>[r'$form', formId] : null;
    path ??= formPath;
    if (path == null) return null;
    final reader = listen
        ? StacStateReader.watching(context)
        : StacStateReader.forAction(context);
    final read = reader.lookupPath(path);
    return StacInputBinding._(
      path,
      identical(path, formPath) ? null : formPath,
      identical(read, stacUnbound) ? null : read,
      !identical(read, stacUnbound),
    );
  }

  final List<String> _path;
  final List<String>? _formPath;

  /// The bound value, or `null` when [hasValue] is false.
  final Object? value;

  /// Whether the bound path has a value.
  final bool hasValue;

  /// Writes [newValue] to the bound path, and to the form for a bound form
  /// field.
  void write(BuildContext context, Object? newValue) {
    if (!context.mounted) return;
    final node = StacScopeNode.of(context);
    StacStateWriter.writeSegments(node, _path, newValue);
    final formPath = _formPath;
    if (formPath != null) {
      StacStateWriter.writeSegments(node, formPath, newValue);
    }
  }

  /// Writes the input's [initial] value when the bound path has none, so
  /// other widgets can read where the input starts.
  void seed(BuildContext context, Object? initial) {
    if (hasValue || initial == null) return;
    write(context, initial);
  }
}

const Object _notShown = Object();

/// Keeps an input's shown value in sync with its binding.
///
/// Before each build the input reads its binding: when the bound value
/// changed it is shown with [showBound], and when nothing is bound yet the
/// input's [initialValue] is written so others can read it. The user's
/// changes are written with [writeBound].
mixin StacBoundInput<W extends StatefulWidget, T> on State<W> {
  /// The input's `bind` path.
  String? get bindPath;

  /// The input's form field `id`, which binds it to `$form.<id>` inside a
  /// form.
  String? get formFieldId => null;

  /// The value the input starts from.
  T? get initialValue;

  /// Converts a bound value to the input's value.
  T? convertBound(Object? value);

  /// Shows [value], which the binding now holds. Called before a build.
  void showBound(T? value);

  StacInputBinding? _binding;
  bool _seeded = false;
  Object? _shown = _notShown;

  /// The input's binding, or `null` when it has none.
  StacInputBinding? get binding => _binding;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _syncBinding();
  }

  @override
  void didUpdateWidget(covariant W oldWidget) {
    super.didUpdateWidget(oldWidget);
    _syncBinding();
  }

  void _syncBinding() {
    final binding = StacInputBinding.resolve(
      context,
      bind: bindPath,
      formId: formFieldId,
    );
    _binding = binding;
    if (binding == null) return;
    if (!binding.hasValue) {
      if (!_seeded) {
        _seeded = true;
        binding.seed(context, initialValue);
      }
      return;
    }
    if (!identical(_shown, _notShown) &&
        stacDeepEquals(_shown, binding.value)) {
      return;
    }
    _shown = binding.value;
    showBound(convertBound(binding.value));
  }

  /// Writes the user's new [value] to the binding.
  void writeBound(T? value) {
    _shown = value;
    _binding?.write(context, value);
  }
}
