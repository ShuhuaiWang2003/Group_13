<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.0.0" xmlns:gml="http://www.opengis.net/gml" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc">
  <UserLayer>
    <sld:LayerFeatureConstraints>
      <sld:FeatureTypeConstraint/>
    </sld:LayerFeatureConstraints>
    <sld:UserStyle>
      <sld:Name>BG_2023_12</sld:Name>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:RasterSymbolizer>
            <sld:ChannelSelection>
              <sld:GrayChannel>
                <sld:SourceChannelName>1</sld:SourceChannelName>
              </sld:GrayChannel>
            </sld:ChannelSelection>
            <sld:ColorMap type="ramp">
              <sld:ColorMapEntry label="6.8850" quantity="6.8849945033119004" color="#d7191c"/>
              <sld:ColorMapEntry label="14.2047" quantity="14.204688391620174" color="#fdae61"/>
              <sld:ColorMapEntry label="21.5244" quantity="21.524382279928449" color="#ffffc0"/>
              <sld:ColorMapEntry label="28.8441" quantity="28.844076168236725" color="#a6d96a"/>
              <sld:ColorMapEntry label="36.1638" quantity="36.163770056544998" color="#1a9641"/>
            </sld:ColorMap>
          </sld:RasterSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </UserLayer>
</StyledLayerDescriptor>
