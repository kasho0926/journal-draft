EHM = [-3073.57	-2975.33	-2886.87	-2816.85	-2870.81	-2754.94	-2689.06	-2666.39	-2749.38	-2660.64	-2635.84	-2555.45	-2468.98	-2295.62	-2104.93	-1994.67	-2320.3	-2357.17	-2511.63	-2469.69	-2446.14	-2422.04	-2308.34	-2295.29	-2359.19	-2435.32	-2364.18	-2298.41	-2310.7	-2374.57	-2385.46	-2248.93	-2157.07	-2085.45	-2216.66	-2223.66	-2129.25	-2219.47	-2261.01	-2517.83	-2422.64	-2283.39	-2143.67	-2175.12	-2111.87	-1957.92	-1904.74	-2177.58	-2243.39	-2311.47	-2229.93	-2205.22	-2279.12	-2180.97	-2063.74	-2067.69	-2104.97	-2002.54	-1972.07	-1902.45	-1896.7	-1887.15	-1839.2	-1881.52	-1823.31	-1782.4	-1655.2	-1600.42	-1620.98	-1490.25	-1470.67	-1466.07	-1478.22	-1441.68	-1356.64	-1272.58	-1323.36	-1310.45	-1689	-1644.13	-1594.88	-1559.69	-1483.74	-1464.32	-1670.74	-1706.98	-1655.12	-1817.73	-1919.31	-1898.35	-1933.5	-1876.08	-1911.19	-1867.24	-1892.34	-1859.11	-1896.27	-1955.16	-1980.12	-1874.16];
NHM = [-3267.13	-3079.11	-2912.67	-2768.53	-2717.51	-2567.05	-2468.23	-2409.81	-2406.21	-2353.81	-2294.74	-2211.02	-2165.64	-2022.32	-1848.86	-1795.65	-1938.42	-1993.51	-2147.25	-2076.6	-2142.41	-2082.85	-2035.99	-2085.77	-2145.74	-2249.18	-2197.7	-2074.61	-2093.7	-2162.57	-2107.03	-2058.37	-1979.99	-1911.73	-2031.21	-1966.83	-1874.83	-1892.68	-1926.91	-2196.12	-2090.65	-1960.77	-1847.67	-1953.42	-1928.35	-1795.14	-1808.23	-1874.66	-2094.12	-2044.41	-1945.15	-1858.62	-1905.13	-1785.57	-1693.61	-1732.74	-1722.22	-1598.45	-1546.74	-1477.01	-1479.52	-1520.39	-1524.03	-1573.35	-1517.46	-1469.8	-1356.91	-1321.72	-1336.7	-1267.49	-1249.18	-1282.14	-1280.92	-1248.1	-1162.87	-1091.79	-1113.97	-1094.64	-1336.32	-1295.6	-1282.74	-1259.72	-1207.96	-1185.77	-1246.9	-1274.82	-1255.1	-1375.09	-1448.67	-1434.53	-1463.83	-1420.2	-1413.83	-1385.59	-1452.73	-1424.27	-1469.24	-1528.68	-1539.17	-1474.55];
x = 1 : 100;

fh = figure(1);

set(fh,'Position', [0, 0, 1200, 500]);
set(fh, 'color', 'white');

plot(x, EHM); 
h1 = plot( x, EHM );
hold on;
h2 = plot( x, NHM );

axis([0, 101, -inf, inf]); 
legend('EHM','NHM', 'Location', 'Best');
grid on; 
set(h1, 'LineStyle', '-', 'LineWidth', 3.0, 'Color', 'Black');
set(h2, 'LineStyle', '-', 'LineWidth', 3.0, 'Color', [0.5 0.5 0.5]);

xlabel( 'Generation', 'FontSize', 12 );
ylabel( 'Quality', 'FontSize', 12, 'Rotation', 90 );
export_fig ../img/bayesian_flat -eps 