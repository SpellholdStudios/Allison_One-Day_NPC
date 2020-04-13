@echo off
cd override
oggdec R#*.ogg
del R#*.ogg
del oggdec.exe
cd..
