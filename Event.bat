@echo off
:: Must be run as Administrator

echo Clearing Event Viewer logs...

wevtutil cl Application
wevtutil cl System
wevtutil cl Security

echo Event Viewer logs cleared.


