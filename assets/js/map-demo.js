(function () {
	"use strict";

	function getNumber(value, fallback) {
		var parsed = parseFloat(value);
		return Number.isFinite(parsed) ? parsed : fallback;
	}

	function setStatus(message) {
		var status = document.getElementById("viewer-status");
		if (status) {
			status.textContent = message;
		}
	}

	document.addEventListener("DOMContentLoaded", function () {
		var mapNode = document.getElementById("demo-map");
		var basemapSelect = document.getElementById("basemap-select");
		var layerSelect = document.getElementById("layer-select");

		if (!mapNode || !basemapSelect || !layerSelect) {
			return;
		}

		if (!window.L) {
			setStatus("Leaflet did not load. Check the internet connection or the Leaflet CDN link.");
			return;
		}

		var center = [
			getNumber(mapNode.dataset.mapCenterLat, 45.46),
			getNumber(mapNode.dataset.mapCenterLng, 9.19)
		];
		var zoom = getNumber(mapNode.dataset.mapZoom, 9);

		var map = L.map(mapNode).setView(center, zoom);
		var baseLayers = {
			osm: L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
				maxZoom: 19,
				attribution: "&copy; OpenStreetMap contributors"
			}),
			satellite: L.tileLayer("https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}", {
				maxZoom: 19,
				attribution: "Tiles &copy; Esri"
			})
		};

		var activeBaseLayer = baseLayers.osm.addTo(map);
		var activeOverlayLayer = null;

		function updateBasemap() {
			var selected = basemapSelect.value;
			var nextLayer = baseLayers[selected] || baseLayers.osm;

			if (activeBaseLayer) {
				map.removeLayer(activeBaseLayer);
			}

			activeBaseLayer = nextLayer.addTo(map);

			if (activeOverlayLayer) {
				activeOverlayLayer.bringToFront();
			}
		}

		function updateOverlay() {
			var selected = layerSelect.value;
			var geoserverUrl = mapNode.dataset.geoserverUrl;

			if (activeOverlayLayer) {
				map.removeLayer(activeOverlayLayer);
				activeOverlayLayer = null;
			}

			if (selected === "none") {
				setStatus("No GeoServer overlay selected.");
				return;
			}

			var layerName = mapNode.dataset["layer" + selected.charAt(0).toUpperCase() + selected.slice(1)];
			var styleName = mapNode.dataset["layerStyle" + selected.charAt(0).toUpperCase() + selected.slice(1)] || "";

			if (!geoserverUrl) {
				setStatus("Selected layer: " + selected + ". Add the GeoServer WMS URL in data-geoserver-url to display it.");
				return;
			}

			activeOverlayLayer = L.tileLayer.wms(geoserverUrl, {
				layers: layerName,
				styles: styleName,
				format: "image/png",
				transparent: true,
				tiled: true,
				opacity: 0.75,
				attribution: "GeoServer WMS"
			}).addTo(map);

			setStatus("Displaying GeoServer layer: " + layerName);
		}

		basemapSelect.addEventListener("change", updateBasemap);
		layerSelect.addEventListener("change", updateOverlay);

		setTimeout(function () {
			map.invalidateSize();
		}, 300);
	});
}());
