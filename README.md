# GIS Lab 2026 Pollutant Layer Viewer

This repository contains a static web page for the GIS Lab 2026 pollutant map project.

The page is organized into three independent pollutant map sections:

- NO2
- PM2.5
- PM10

Each pollutant section contains one full-width web map. Users can choose:

- Basemap: OSM or satellite imagery.
- Overlay layer: pollution, land cover, or population layers.

PM10 currently includes four configured GeoServer pollution WMS layers:

- `Bulgaria_GIS_pm10_localtest:BG_2023_12`
- `Bulgaria_GIS_pm10_localtest:Bulgaria_average_pm10_2023`
- `Bulgaria_GIS_pm10_localtest:Bulgaria_pm10_2021_2023_AMAC_map`
- `Bulgaria_GIS_pm10_localtest:Bulgaria_pm10_concentration_map_2023`

## Displayed Outputs

The page displays selected chart and table outputs directly in the page. It does not include download links for the supporting files.

- `assets/data/landcover/zonal-statistics-lcc.png`: Land cover chart.
- `assets/data/landcover/bulgaria-2021-2023.xlsx`: Source workbook used to create the displayed land cover table.
- `assets/data/population/pm10-population-exposure.png`: PM10 population exposure chart.

## Project Structure

- `index.html`: Main web page.
- `assets/css/custom.css`: Custom layout, map, chart, and table styling.
- `assets/js/map-demo.js`: Basemap tile rendering and GeoServer WMS overlay switching.
- `assets/data/`: Supporting image and spreadsheet files used for page display.
- `LICENSE.txt`: Original HTML5 UP template license.

## Credits

The page is based on the Massively template by HTML5 UP.
