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

DataCell editCellTextsProjects({
  required String projectName,
  required String description,
  required String explainHelper,
  required TextEditingController textEditingController,
  required Function(String)? onChangedprojectName,
  required Function(String)? onChangeddescription,
  required Function(String)? onChangedexplainHelper,
}) {
  return DataCell(
    showEditIcon: true,
    Column(
      children: [
        TextField(
          onChanged: onChangedprojectName,
          controller: textEditingController,
          maxLength: 15,
          decoration: InputDecoration(
            hintText: projectName,
            counterText: "",
            border: InputBorder.none,
          ),
        ),
        TextField(
          onChanged: onChangeddescription,
          controller: textEditingController,
          maxLength: 15,
          decoration: InputDecoration(
            hintText: projectName,
            counterText: "",
            border: InputBorder.none,
          ),
        ),
        TextField(
          onChanged: onChangedprojectName,
          controller: textEditingController,
          maxLength: 15,
          decoration: InputDecoration(
            hintText: projectName,
            counterText: "",
            border: InputBorder.none,
          ),
        ),
      ],
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
