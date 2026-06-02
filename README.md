# GIS Lab 2026 GIS Layer Viewer

This repository contains a static web page for the GIS Lab 2026 map project.

The current draft includes an interactive map viewer with:

- A selectable basemap: OSM or satellite imagery.
- A selectable GeoServer overlay layer: pollution, landcover, or population.
- Placeholder settings for TIF or GPKG data published through GeoServer WMS.

The page does not depend on local PNG files. The final map layers should be published through GeoServer and loaded as WMS layers.

## Project Structure

- `index.html`: Main web page.
- `assets/css/custom.css`: Custom styling for the project layout and GeoServer placeholders.
- `assets/js/map-demo.js`: Leaflet map setup for basemap and GeoServer layer switching.
- `assets/data/population/`: Population PNG and Excel outputs.
- `assets/data/landcover/`: Landcover PNG and Excel outputs.
- `assets/`: HTML5 UP template styles, scripts, and web fonts.
- `images/`: Template background and image assets.
- `LICENSE.txt`: Original HTML5 UP template license.

## GeoServer Placeholder Fields

The map viewer is configured in `index.html` with attributes such as:

```html
data-geoserver-url=""
data-layer-pollution="your_workspace:pollution"
data-layer-landcover="your_workspace:landcover"
data-layer-population="your_workspace:population"
```

When the GeoServer layers are ready, replace the empty WMS URL and placeholder layer names.

## Preview

Open `index.html` in a browser, or serve the folder with any local static file server.

## Credits

The page is based on the Massively template by HTML5 UP.
