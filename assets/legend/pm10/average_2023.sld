<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.0.0" xmlns:gml="http://www.opengis.net/gml" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc">
  <UserLayer>
    <sld:LayerFeatureConstraints>
      <sld:FeatureTypeConstraint/>
    </sld:LayerFeatureConstraints>
    <sld:UserStyle>
      <sld:Name>Bulgaria_average_pm10_2023</sld:Name>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:RasterSymbolizer>
            <sld:ChannelSelection>
              <sld:GrayChannel>
                <sld:SourceChannelName>1</sld:SourceChannelName>
              </sld:GrayChannel>
            </sld:ChannelSelection>
            <sld:ColorMap type="ramp">
              <sld:ColorMapEntry label="10.5651" quantity="10.565100828513" color="#d7191c"/>
              <sld:ColorMapEntry label="13.6765" quantity="13.676469551319499" color="#fdae61"/>
              <sld:ColorMapEntry label="16.7878" quantity="16.787838274125999" color="#ffffc0"/>
              <sld:ColorMapEntry label="19.8992" quantity="19.899206996932499" color="#a6d96a"/>
              <sld:ColorMapEntry label="23.0106" quantity="23.010575719738998" color="#1a9641"/>
            </sld:ColorMap>
          </sld:RasterSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </UserLayer>
</StyledLayerDescriptor>
