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
    title: 'BE',
    field: 'num_BE',
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
    title: 'FE',
    field: 'num_FE',
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
    title: 'FS',
    field: 'num_FS',
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
    title: 'BE Real',
    field: 'be_real',
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
    title: 'FE Real',
    field: 'fe_real',
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
    title: 'FS Real',
    field: 'fs_real',
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
    title: 'Total(Before Buffer)',
    field: 'before_buffer',
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
    title: 'Buffer',
    field: 'buffer_field',
    backgroundColor: Colors.amber[600],
    type: PlutoColumnType.number(
      format: '#,###.##',
    ),
    footerRenderer: (rendererContext) {
      return PlutoAggregateColumnFooter(
        rendererContext: rendererContext,
        type: PlutoAggregateColumnType.count,
        format: '#,###.##',
        alignment: Alignment.center,
        titleSpanBuilder: (text) {
          return [
            const TextSpan(
              text: 'Buffer',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextSpan(text: "1.25"),
          ];
        },
      );
    },
    readOnly: true,
  ),
];

// Rows for Day Estimates
List<PlutoRow> breakdownRows = [
  PlutoRow(
    cells: {
      'module_field': PlutoCell(value: 'Module Name'),
      'feature_field': PlutoCell(value: 'OCR\nDescription of the feature'),
      'num_BE': PlutoCell(value: 1),
      'num_FE': PlutoCell(value: '0'),
      'num_FS': PlutoCell(value: '0'),
      'be_real': PlutoCell(value: 1.25),
      'fe_real': PlutoCell(value: '0'),
      'fs_real': PlutoCell(value: '0'),
      'before_buffer': PlutoCell(value: 1),
      'buffer_field': PlutoCell(value: 1.25),
    },
  ),
  PlutoRow(
    cells: {
      'module_field': PlutoCell(value: 'Module Name'),
      'feature_field': PlutoCell(value: 'HAL App\nDescription of the feature'),
      'num_BE': PlutoCell(value: 1),
      'num_FE': PlutoCell(value: '0'),
      'num_FS': PlutoCell(value: '0'),
      'be_real': PlutoCell(value: 1.25),
      'fe_real': PlutoCell(value: '0'),
      'fs_real': PlutoCell(value: '0'),
      'before_buffer': PlutoCell(value: 1),
      'buffer_field': PlutoCell(value: 1.25),
    },
  ),
  PlutoRow(
    cells: {
      'module_field': PlutoCell(value: 'Module Name'),
      'feature_field':
          PlutoCell(value: 'Feature Name\nDescription of the feature'),
      'num_BE': PlutoCell(value: 2),
      'num_FE': PlutoCell(value: '0'),
      'num_FS': PlutoCell(value: '0'),
      'be_real': PlutoCell(value: 2.5),
      'fe_real': PlutoCell(value: '0'),
      'fs_real': PlutoCell(value: '0'),
      'before_buffer': PlutoCell(value: 2),
      'buffer_field': PlutoCell(value: 1.25),
    },
  ),
  PlutoRow(
    cells: {
      'module_field': PlutoCell(value: 'Module Name'),
      'feature_field':
          PlutoCell(value: 'Test Site\nDescription of the feature'),
      'num_BE': PlutoCell(value: '1'),
      'num_FE': PlutoCell(value: 0),
      'num_FS': PlutoCell(value: '0'),
      'be_real': PlutoCell(value: 1.25),
      'fe_real': PlutoCell(value: '0'),
      'fs_real': PlutoCell(value: '0'),
      'before_buffer': PlutoCell(value: 1),
      'buffer_field': PlutoCell(value: 1.25),
    },
  ),
];
