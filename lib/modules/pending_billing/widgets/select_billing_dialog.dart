import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pending_billing/core/l10n/translate_key.dart';
import 'package:pending_billing/entities/billing_entity.dart';

class SelectBillingDialog extends StatefulWidget {
  final void Function(BillingEntity) onChange;
  final List<BillingEntity> list;
  const SelectBillingDialog({
    super.key,
    required this.onChange,
    required this.list,
  });

  @override
  State<SelectBillingDialog> createState() => _SelectBillingDialogState();
}

class _SelectBillingDialogState extends State<SelectBillingDialog> {
  final _searchController = TextEditingController();
  void listener() => setState(() {});

  @override
  void initState() {
    super.initState();
    _searchController.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.removeListener(listener);
    _searchController.dispose();
  }

  List<BillingEntity> get _filteredList => widget.list
      .where((e) => e.name.contains(_searchController.text))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: TranslateKey.search.tr,
                ),
              ),
              if (_filteredList.isEmpty)
                ListTile(
                  title: Center(child: Text(TranslateKey.noData.tr)),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _filteredList.length,
                  itemBuilder: (c, i) {
                    final item = _filteredList[i];
                    return ListTile(
                      leading: Text(item.id.toString()),
                      title: Text(item.name),
                      onTap: () {
                        widget.onChange(item);
                        Navigator.of(context).pop();
                      },
                    );
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}
