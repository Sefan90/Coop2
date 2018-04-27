<?xml version="1.0" encoding="UTF-8"?>
<tileset name="NewTilemap" tilewidth="16" tileheight="16" tilecount="100" columns="10">
 <image source="img/NewTilemap.png" width="160" height="160"/>
 <terraintypes>
  <terrain name="Floor" tile="11"/>
  <terrain name="Lines" tile="4"/>
 </terraintypes>
 <tile id="0" terrain="1,1,1,0"/>
 <tile id="1" terrain="1,1,0,0"/>
 <tile id="2" terrain="1,1,0,1"/>
 <tile id="4" terrain="1,1,1,1">
  <properties>
   <property name="collidable" type="bool" value="true"/>
  </properties>
 </tile>
 <tile id="10" terrain="1,0,1,0"/>
 <tile id="11" terrain="0,0,0,0"/>
 <tile id="12" terrain="0,1,0,1"/>
 <tile id="20" terrain="1,0,1,1"/>
 <tile id="21" terrain="0,0,1,1"/>
 <tile id="22" terrain="0,1,1,1"/>
 <tile id="30" terrain="1,1,1,0"/>
 <tile id="31" terrain="1,1,0,1"/>
 <tile id="40" terrain="1,0,1,1"/>
 <tile id="41" terrain="0,1,1,1"/>
 <tile id="60" terrain="0,0,0,1"/>
 <tile id="61" terrain="0,0,1,0"/>
 <tile id="70" terrain="0,1,0,0"/>
 <tile id="71" terrain="1,0,0,0"/>
</tileset>
