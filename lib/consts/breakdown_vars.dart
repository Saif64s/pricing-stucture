import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

// Cols for Day Estimates
List<PlutoColumn> breakDownCols = [
  PlutoColumn(
    title: 'Module',
    field: 'module_field',
    type: PlutoColumnType.text(),
    frozen: PlutoColumnFrozen.start,
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.count,
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'Org. Name',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'Feature/Description',
    field: 'feature_field',
    frozen: PlutoColumnFrozen.start,
    type: PlutoColumnType.text(),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.count,
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'Project Name',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'BE Price',
    field: 'be_price',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'FE Price',
    field: 'fe_price',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'FS Price',
    field: 'fs_price',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'BA-UX-QA Price',
    field: 'ba_price',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'Sales Commission Value',
    field: 'comission_price',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'Min Number of Days',
    field: 'min_days',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'Future Development Time',
    field: 'future_dev_time',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'Future Price',
    field: 'future_price',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'Future Price Rounded',
    field: 'future_price_rounded',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'MVP',
    field: 'mvp',
    type: PlutoColumnType.select(
      ["YES", "NO"],
    ),
  ),
  PlutoColumn(
    title: 'MVP Time (Simulteneous Work)',
    field: 'mvp_sim_work',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'MVP Time (Individual Work)',
    field: 'mvp_indv_work',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
  PlutoColumn(
    title: 'Effort Time (inc. Dev + BA + UX + QA)',
    field: 'effort_time',
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.sum,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'CHF',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: text),
          ];
        },
      );
    },
  ),
];

// Rows for Day Estimates
List<PlutoRow> breakdownRows = [
  PlutoRow(
    cells: {
      'module_field': PlutoCell(value: 'Module Name'),
      'feature_field': PlutoCell(value: 'OCR\nDescription of the feature'),
      'be_price': PlutoCell(value: 1),
      'fe_price': PlutoCell(value: '0'),
      'fs_price': PlutoCell(value: '0'),
      'ba_price': PlutoCell(value: 1.25),
      'comission_price': PlutoCell(value: '0'),
      'min_days': PlutoCell(value: '0'),
      'future_dev_time': PlutoCell(value: 1),
      'future_price': PlutoCell(value: 1.25),
      'future_price_rounded': PlutoCell(value: 1.25),
      'mvp': PlutoCell(value: 1.25),
      'mvp_sim_work': PlutoCell(value: 1.25),
      'mvp_indv_work': PlutoCell(value: 1.25),
      'effort_time': PlutoCell(value: 1.25),
    },
  ),
  PlutoRow(
    cells: {
      'module_field': PlutoCell(value: 'Module Name'),
      'feature_field': PlutoCell(value: 'OCR\nDescription of the feature'),
      'be_price': PlutoCell(value: 1),
      'fe_price': PlutoCell(value: '0'),
      'fs_price': PlutoCell(value: '0'),
      'ba_price': PlutoCell(value: 1.25),
      'comission_price': PlutoCell(value: '0'),
      'min_days': PlutoCell(value: '0'),
      'future_dev_time': PlutoCell(value: 1),
      'future_price': PlutoCell(value: 1.25),
      'future_price_rounded': PlutoCell(value: 1.25),
      'mvp': PlutoCell(value: 1.25),
      'mvp_sim_work': PlutoCell(value: 1.25),
      'mvp_indv_work': PlutoCell(value: 1.25),
      'effort_time': PlutoCell(value: 1.25),
    },
  ),
  PlutoRow(
    cells: {
      'module_field': PlutoCell(value: 'Module Name'),
      'feature_field': PlutoCell(value: 'OCR\nDescription of the feature'),
      'be_price': PlutoCell(value: 1),
      'fe_price': PlutoCell(value: '0'),
      'fs_price': PlutoCell(value: '0'),
      'ba_price': PlutoCell(value: 1.25),
      'comission_price': PlutoCell(value: '0'),
      'min_days': PlutoCell(value: '0'),
      'future_dev_time': PlutoCell(value: 1),
      'future_price': PlutoCell(value: 1.25),
      'future_price_rounded': PlutoCell(value: 1.25),
      'mvp': PlutoCell(value: 1.25),
      'mvp_sim_work': PlutoCell(value: 1.25),
      'mvp_indv_work': PlutoCell(value: 1.25),
      'effort_time': PlutoCell(value: 1.25),
    },
  ),
  PlutoRow(
    cells: {
      'module_field': PlutoCell(value: 'Module Name'),
      'feature_field': PlutoCell(value: 'OCR\nDescription of the feature'),
      'be_price': PlutoCell(value: 1),
      'fe_price': PlutoCell(value: '0'),
      'fs_price': PlutoCell(value: '0'),
      'ba_price': PlutoCell(value: 1.25),
      'comission_price': PlutoCell(value: '0'),
      'min_days': PlutoCell(value: '0'),
      'future_dev_time': PlutoCell(value: 1),
      'future_price': PlutoCell(value: 1.25),
      'future_price_rounded': PlutoCell(value: 1.25),
      'mvp': PlutoCell(value: 1.25),
      'mvp_sim_work': PlutoCell(value: 1.25),
      'mvp_indv_work': PlutoCell(value: 1.25),
      'effort_time': PlutoCell(value: 1.25),
    },
  ),
];
