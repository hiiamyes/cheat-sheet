# GPX

GPS eXchange Format

- https://www.topografix.com/GPX/1/1/
- https://www.topografix.com/gpx_manual.asp
- https://wiki.openstreetmap.org/wiki/GPX#:~:text=GPX%2C%20or%20GPS%20exchange%20format,before%20it%20can%20be%20uploaded.

GPX, or GPS exchange format, is an XML file format for storing coordinate data. It can store waypoints, tracks, and routes in a way that is easy to process and convert to other forms. All GPS data used by OpenStreetMap is converted to GPX format before it can be uploaded.

## Format

```xml
<?xml version="1.0" encoding="UTF-8"?>
<gpx
	version="1.1"
	creator="hiiiike"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns="http://www.topografix.com/GPX/1/0"
	xsi:schemaLocation="http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd">
	<rte>
		<rtept lat="46.57608333" lon="8.89241667"></rtept>
		<rtept lat="46.57619444" lon="8.89252778"></rtept>
		<rtept lat="46.57641667" lon="8.89266667"></rtept>
		<rtept lat="46.57650000" lon="8.89280556"></rtept>
		<rtept lat="46.57638889" lon="8.89302778"></rtept>
		<rtept lat="46.57652778" lon="8.89322222"></rtept>
		<rtept lat="46.57661111" lon="8.89344444"></rtept>
	</rte>
</gpx>
```

## Namespaces

GPX files should reference at least two namespaces:

1. XMLSchema namespace
1. GPX namespace

```
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns="http://www.topografix.com/GPX/1/0"
xsi:schemaLocation="http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd">
```

## Validator
