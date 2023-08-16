import 'package:flutter/material.dart';

DataCell editCellTexts(
    {required String text,
    required TextEditingController textEditingController,
    required Function(String)? onChanged}) {
  return DataCell(
    showEditIcon: true,
    TextField(
      onChanged: onChanged,
      controller: textEditingController,
      maxLength: 15,
      decoration: InputDecoration(
        hintText: text,
        counterText: "",
        border: InputBorder.none,
      ),
    ),
  );
}

DataCell noEditCellTexts({required String text}) {
  return DataCell(
    TextField(
      maxLength: 15,
      decoration: InputDecoration(
        hintText: text,
        counterText: "",
        border: InputBorder.none,
      ),
    ),
  );
}
