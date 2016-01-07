v 20130925 2
C 8000 49200 1 0 1 tb2p200.sym
{
T 7150 49500 5 10 1 1 0 6 1
refdes=TB1
T 7675 50375 5 10 0 0 0 6 1
footprint=tblock-200mil-2.fp
T 7675 50525 5 10 0 0 0 6 1
device=TerminalBlock
}
C 8400 48900 1 0 0 tvs_vert.sym
{
T 8900 49600 5 10 1 1 0 0 1
refdes=D1
T 8900 49400 5 10 0 1 0 0 1
value=TVS
T 8900 50700 5 8 0 0 0 0 1
symversion=1.0
T 8900 49200 5 8 0 1 0 0 1
footprint=TVS_Diode_4
}
C 15200 49600 1 0 0 1N4001-1.sym
{
T 15500 50400 5 10 0 0 0 0 1
footprint=DO-41
T 15600 50300 5 10 1 1 0 4 1
refdes=D3
T 15500 51000 5 10 0 0 0 0 1
device=DIODE
T 15700 49700 5 10 0 1 0 4 1
value=1N5918
}
C 10100 49600 1 0 0 1N4001-1.sym
{
T 10400 50400 5 10 0 0 0 0 1
footprint=DO-41
T 10500 50300 5 10 1 1 0 4 1
refdes=D2
T 10400 51000 5 10 0 0 0 0 1
device=DIODE
T 10600 49700 5 10 0 1 0 4 1
value=1N5918
}
N 8000 49000 18600 49000 4
C 17000 49200 1 0 0 tb2p200.sym
{
T 17850 49500 5 10 1 1 0 0 1
refdes=TB2
T 17325 50375 5 10 0 0 0 0 1
footprint=tblock-200mil-2.fp
T 17325 50525 5 10 0 0 0 0 1
device=TerminalBlock
}
C 11400 49000 1 0 0 Leivin_LM2529_DCDC_StepDown.sym
{
T 11900 50266 5 10 1 1 0 0 1
refdes=Q1
T 11900 52000 5 10 0 0 0 0 1
device=LEIVIN_LM2596
T 11895 51400 5 10 0 0 0 0 1
footprint=LEIVIN_LM2596
}
N 8600 49800 8600 50000 4
N 11000 50000 11400 50000 4
N 11400 49500 11400 49000 4
N 14900 50000 15200 50000 4
N 14900 49500 14900 49000 4
C 18600 49200 1 0 0 tb2p200.sym
{
T 19450 49500 5 10 1 1 0 0 1
refdes=TB3
T 18925 50375 5 10 0 0 0 0 1
footprint=tblock-200mil-2.fp
T 18925 50525 5 10 0 0 0 0 1
device=TerminalBlock
}
N 9700 49900 9700 50000 4
C 9600 49000 1 0 0 capacitor_electrolytic.sym
{
T 9600 50600 5 10 0 0 0 0 1
device=capacitor polarized
T 9583 49684 5 12 1 1 180 0 1
refdes=C1
T 9684 49371 5 6 0 0 270 2 1
value=3.3u
T 9600 50400 5 10 0 0 0 0 1
footprint=C_Polar_3300nF
}
N 16100 50000 18600 50000 4
N 17000 50000 17000 49700 4
N 17000 49400 17000 49000 4
N 18600 50000 18600 49700 4
N 18600 49000 18600 49400 4
N 8000 49000 8000 49400 4
N 10100 50000 8000 50000 4
N 8000 50000 8000 49700 4