# Converters Guide

## DoubleConverter

Use when JSON may send integer values for `double` fields.

## StacWidgetConverter

Use for child widget fields in custom widget models.

## General Rule

Use converters only when field serialization would otherwise fail or lose fidelity.
