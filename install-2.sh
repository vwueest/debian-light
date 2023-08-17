
# set theme
xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
xfconf-query -c xfwm4 -p /general/theme -s "Arc-Dark"   
# xfconf-query -c xfce4-terminal -p /color-schemes/Tango/background-color -s "#11111D"
echo "#11111D"
xfce4-terminal --preferences
xfconf-query -c xfwm4 -p /general/use_compositing -s false # turn compositor off

# set panel
mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/
cp $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml.bak
echo '<?xml version="1.0" encoding="UTF-8"?>

<channel name="xfce4-panel" version="1.0">
  <property name="configver" type="int" value="2"/>
  <property name="panels" type="array">
    <value type="int" value="1"/>
    <property name="dark-mode" type="bool" value="true"/>
    <property name="panel-1" type="empty">
      <property name="position" type="string" value="p=6;x=0;y=0"/>
      <property name="length" type="double" value="100"/>
      <property name="position-locked" type="bool" value="true"/>
      <property name="icon-size" type="uint" value="20"/>
      <property name="size" type="uint" value="32"/>
      <property name="plugin-ids" type="array">
        <value type="int" value="1"/>
        <value type="int" value="7"/>
        <value type="int" value="10"/>
        <value type="int" value="9"/>
        <value type="int" value="11"/>
        <value type="int" value="2"/>
        <value type="int" value="3"/>
        <value type="int" value="4"/>
        <value type="int" value="5"/>
        <value type="int" value="6"/>
        <value type="int" value="8"/>
        <value type="int" value="12"/>
        <value type="int" value="14"/>
      </property>
      <property name="mode" type="uint" value="2"/>
    </property>
  </property>
  <property name="plugins" type="empty">
    <property name="plugin-2" type="string" value="tasklist">
      <property name="grouping" type="uint" value="1"/>
      <property name="show-handle" type="bool" value="false"/>
      <property name="show-tooltips" type="bool" value="false"/>
      <property name="show-labels" type="bool" value="false"/>
    </property>
    <property name="plugin-3" type="string" value="separator">
      <property name="expand" type="bool" value="true"/>
      <property name="style" type="uint" value="0"/>
    </property>
    <property name="plugin-4" type="string" value="pager">
      <property name="rows" type="uint" value="4"/>
    </property>
    <property name="plugin-5" type="string" value="separator">
      <property name="style" type="uint" value="0"/>
    </property>
    <property name="plugin-6" type="string" value="systray">
      <property name="square-icons" type="bool" value="true"/>
    </property>
    <property name="plugin-8" type="string" value="pulseaudio">
      <property name="enable-keyboard-shortcuts" type="bool" value="true"/>
      <property name="show-notifications" type="bool" value="true"/>
    </property>
    <property name="plugin-12" type="string" value="clock">
      <property name="mode" type="uint" value="2"/>
      <property name="digital-layout" type="uint" value="3"/>
      <property name="timezone" type="string" value="Europe/Zurich"/>
    </property>
    <property name="plugin-14" type="string" value="actions">
      <property name="button-title" type="uint" value="3"/>
      <property name="custom-title" type="string" value="Off"/>
      <property name="items" type="array">
        <value type="string" value="+lock-screen"/>
        <value type="string" value="+switch-user"/>
        <value type="string" value="+separator"/>
        <value type="string" value="+suspend"/>
        <value type="string" value="-hibernate"/>
        <value type="string" value="-hybrid-sleep"/>
        <value type="string" value="-separator"/>
        <value type="string" value="+shutdown"/>
        <value type="string" value="+restart"/>
        <value type="string" value="+separator"/>
        <value type="string" value="+logout"/>
        <value type="string" value="-logout-dialog"/>
      </property>
    </property>
    <property name="plugin-1" type="string" value="whiskermenu"/>
    <property name="plugin-7" type="string" value="launcher">
      <property name="items" type="array">
        <value type="string" value="16922609461.desktop"/>
      </property>
    </property>
    <property name="plugin-9" type="string" value="launcher">
      <property name="items" type="array">
        <value type="string" value="16922609642.desktop"/>
      </property>
    </property>
    <property name="plugin-10" type="string" value="launcher">
      <property name="items" type="array">
        <value type="string" value="16922609793.desktop"/>
      </property>
    </property>
    <property name="plugin-11" type="string" value="separator"/>
  </property>
</channel>
' > $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml