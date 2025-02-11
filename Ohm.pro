# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-ohm

#CONFIG += sailfishapp
# Start of temporary fix for the icon for the Nov 2013 harbour requirements
# QML files and folders
QT += quick qml
CONFIG += link_pkgconfig
PKGCONFIG += sailfishapp
INCLUDEPATH += /usr/include/sailfishapp

TARGETPATH = /usr/bin
target.path = $$TARGETPATH

DEPLOYMENT_PATH = /usr/share/$$TARGET
qml.files = qml
qml.path = $$DEPLOYMENT_PATH

desktop.files = harbour-ohm.desktop
desktop.path = /usr/share/applications

icon86.files += icons/86x86/harbour-ohm.png
icon86.path = /usr/share/icons/hicolor/86x86/apps

icon108.files += icons/108x108/harbour-ohm.png
icon108.path = /usr/share/icons/hicolor/108x108/apps

icon128.files += icons/128x128/harbour-ohm.png
icon128.path = /usr/share/icons/hicolor/128x128/apps

icon172.files += icons/172x172/harbour-ohm.png
icon172.path = /usr/share/icons/hicolor/172x172/apps

icon256.files += icons/256x256/harbour-ohm.png
icon256.path = /usr/share/icons/hicolor/256x256/apps

INSTALLS += icon86 icon108 icon128 icon172 icon256

INSTALLS += target desktop qml

SOURCES += src/Ohm.cpp

OTHER_FILES += \
    qml/pages/MainPage.qml \
    qml/pages/resistorcolor.qml \
    qml/pages/About.qml \
    qml/pages/smdresistorcalc.qml \
    qml/pages/capacitorcodes.qml \
    qml/pages/usb_pins.qml \
    qml/pages/micro_usb_pins.qml \
    qml/pages/induction.qml \
    qml/pages/s-video.qml \
    qml/pages/ps2.qml \
    qml/pages/vga_pins.qml \
    qml/pages/usb_pins.qml \
    qml/pages/db25_pins.qml \
    qml/pages/rj45_pins.qml \
    qml/pages/dipswitch.qml \
    qml/pages/serial_pins.qml \
    qml/pages/midi.qml \
    qml/pages/components/PinsDetails.qml \
    qml/harbour-ohm.qml \
    qml/img/capacitor.png \
    qml/img/logo_ohm.png \
    qml/img/induct.png \
    qml/img/resistor.png \
    qml/img/smdresistor.png \
    qml/img/spiral.png \
    qml/img/resistor_6rings.png \
    qml/img/resistor.png \
    qml/img/resistor_big_6rings.png \
    qml/img/resistor_big_5rings.png \
    qml/img/resistor_big_4rings.png \
    qml/img/resistor_big_3rings.png \
    qml/img/resistor_rev.png \
    qml/img/resistor_big_6rings_rev.png \
    qml/img/resistor_big_5rings_rev.png \
    qml/img/resistor_big_4rings_rev.png \
    qml/img/resistor_big_3rings_rev.png \
    qml/img/bigsmd_empty.png \
    qml/img/vga_male.png \
    qml/img/vga_icon.png \
    qml/img/vga_female.png \
    qml/img/usb_A_receptacle.png \
    qml/img/usb_A_plug.png \
    qml/img/usb_B_receptacle.png \
    qml/img/usb_B_plug.png \
    qml/img/usb_icon.png \
    qml/img/seriell_male.png \
    qml/img/seriell_icon.png \
    qml/img/serial_female.png \
    qml/img/s-video.png \
    qml/img/midi_male.png \
    qml/img/midi_female.png \
    qml/img/ps2.png \
    harbour-ohm.desktop \
    translations/*.ts \
    rpm/harbour-ohm.spec

# INSTALLS += translations
# only include these files for translation:
lupdate_only {
    SOURCES = qml/*.qml \
              qml/pages/*.qml
}
translations.files = translations
translations.path = $${DEPLOYMENT_PATH}

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
