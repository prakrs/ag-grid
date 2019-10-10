@echo off

rem in windows, the linked folders inside the _dev folder don't work correctly.
rem to get the build working, delete the contents of the _dev folder and
rem run this script instead.

mkdir _dev\ag-grid
mkdir _dev\ag-grid\dist
mkdir "_dev\@ag-community"

mklink /J _dev\ag-grid-angular ..\ag-grid-angular
mklink /J _dev\ag-grid-enterprise ..\ag-grid-enterprise
mklink /J _dev\ag-grid-react ..\ag-grid-react
mklink /J _dev\ag-grid-vue ..\ag-grid-vue

mklink _dev\ag-grid\main.ts ..\ag-grid\exports.ts
mklink /J _dev\ag-grid\dist\lib ..\ag-grid\src\ts

mklink /J "_dev\@ag-community\client-side-row-model" ..\..\community-modules\client-side-row-model
