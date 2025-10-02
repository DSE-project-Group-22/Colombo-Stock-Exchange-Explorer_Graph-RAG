// Query 1
MERGE (c:Company {name: 'WindForce PLC'}) ON CREATE SET c.id = 'windforce_plc', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Renewgen Private Limited'}) ON CREATE SET c.id = 'renewgen_private_limited';

// Query 3
MERGE (c:Company {name: 'Daily Life Renewable Energy (Pvt) Limited'}) ON CREATE SET c.id = 'daily_life_renewable_energy_pvt_limited';

// Query 4
MERGE (c:Company {name: 'Powergen Lanka (Pvt) Ltd'}) ON CREATE SET c.id = 'powergen_lanka_pvt_ltd';

// Query 5
MERGE (c:Company {name: 'Beta Power (Pvt) Limited'}) ON CREATE SET c.id = 'beta_power_pvt_limited';

// Query 6
MERGE (c:Company {name: 'Joule Power (Pvt) Limited'}) ON CREATE SET c.id = 'joule_power_pvt_limited';

// Query 7
MERGE (c:Company {name: 'Seguwantivu Wind Power Private Limited'}) ON CREATE SET c.id = 'seguwantivu_wind_power_private_limited';

// Query 8
MERGE (c:Company {name: 'Vidatamunai Wind Power Private Limited'}) ON CREATE SET c.id = 'vidatamunai_wind_power_private_limited';

// Query 9
MERGE (c:Company {name: 'Hiruras Power (Pvt) Ltd'}) ON CREATE SET c.id = 'hiruras_power_pvt_ltd';

// Query 10
MERGE (c:Company {name: 'Vydexa (Lanka) Power Corporation (Pvt) Ltd'}) ON CREATE SET c.id = 'vydexa_lanka_power_corporation_pvt_ltd';

// Query 11
MERGE (c:Company {name: 'Sunny Clime Lanka (Pvt) Ltd'}) ON CREATE SET c.id = 'sunny_clime_lanka_pvt_ltd';

// Query 12
MERGE (c:Company {name: 'Seruwawila Photovoltaic (Pvt) Ltd'}) ON CREATE SET c.id = 'seruwawila_photovoltaic_pvt_ltd';

// Query 13
MERGE (c:Company {name: 'Kebitigollewa Solar Power (Pvt) Ltd'}) ON CREATE SET c.id = 'kepitigollewa_solar_power_pvt_ltd';

// Query 14
MERGE (c:Company {name: 'Solar Universe (Pvt) Ltd'}) ON CREATE SET c.id = 'solar_universe_pvt_ltd';

// Query 15
MERGE (c:Company {name: 'Sooryashakthi (Pvt) Ltd'}) ON CREATE SET c.id = 'sooryashakthi_pvt_ltd';

// Query 16
MERGE (c:Company {name: 'Tororo Pv Power Company Limited'}) ON CREATE SET c.id = 'tororo_pv_power_company_limited';

// Query 17
MERGE (c:Company {name: 'Sky Solar (Pvt) Limited'}) ON CREATE SET c.id = 'sky_solar_pvt_limited';

// Query 18
MERGE (c:Company {name: 'Suryadhanavi (Pvt) Limited'}) ON CREATE SET c.id = 'suryadhanavi_pvt_limited';

// Query 19
MERGE (c:Company {name: 'Hirujanani (Pvt) Limited'}) ON CREATE SET c.id = 'hirujanani_pvt_limited';

// Query 20
MERGE (c:Company {name: 'Energy Reclamation Private Limited'}) ON CREATE SET c.id = 'energy_reclamation_private_limited';

// Query 21
MERGE (c:Company {name: 'Deloitte Advisory Services Pvt Ltd'}) ON CREATE SET c.id = 'deloitte_advisory_services_pvt_ltd';

// Query 22
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 23
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 24
MERGE (p:Product {name: 'Solar Power Generation'}) ON CREATE SET p.id = 'solar_power_generation';

// Query 25
MERGE (p:Product {name: 'Wind Power Generation'}) ON CREATE SET p.id = 'wind_power_generation';

// Query 26
MERGE (p:Product {name: 'Hydropower Generation'}) ON CREATE SET p.id = 'hydropower_generation';

// Query 27
MERGE (p:Product {name: 'EPC Services'}) ON CREATE SET p.id = 'epc_services';

// Query 28
MERGE (p:Product {name: 'O&M Services'}) ON CREATE SET p.id = 'o_m_services';

// Query 29
MERGE (p:Product {name: 'Electric Vehicles'}) ON CREATE SET p.id = 'electric_vehicles';

// Query 30
MERGE (p:Product {name: 'Satva e-bikes'}) ON CREATE SET p.id = 'satva_e_bikes';

// Query 31
MERGE (p:Product {name: 'Battery Energy Storage Systems'}) ON CREATE SET p.id = 'battery_energy_storage_systems';

// Query 32
MERGE (m:Metric {name: 'Group Revenue'}) ON CREATE SET m.id = 'group_revenue', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Taxation'}) ON CREATE SET m.id = 'profit_before_taxation', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit After Taxation'}) ON CREATE SET m.id = 'profit_after_taxation', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit Attributable to Parent'}) ON CREATE SET m.id = 'profit_attributable_to_parent', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Gross Dividend Paid'}) ON CREATE SET m.id = 'gross_dividend_paid', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Equity Attributable to the Equity Holders of the Parent'}) ON CREATE SET m.id = 'equity_attributable_to_the_equity_holders_of_the_parent', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Net Asset Value Per Share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Return on Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 46
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 47
MERGE (m:Metric {name: 'Interest Bearing Borrowing'}) ON CREATE SET m.id = 'interest_bearing_borrowing', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Equity'}) ON CREATE SET m.id = 'equity', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) ON CREATE SET m.id = 'interest_bearing_loans_and_borrowings', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Lease Liabilities'}) ON CREATE SET m.id = 'lease_liabilities', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Non-Controlling Interest'}) ON CREATE SET m.id = 'non_controlling_interest', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Debt Capital'}) ON CREATE SET m.id = 'debt_capital', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Carbon Credit Sales'}) ON CREATE SET m.id = 'carbon_credit_sales', m.unit = 'Rs';

// Query 57
MATCH (c:Company {name: 'WindForce PLC'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
MATCH (c:Company {name: 'WindForce PLC'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
MATCH (c:Company {name: 'WindForce PLC'}), (p:Product {name: 'Solar Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'WindForce PLC'}), (p:Product {name: 'Wind Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'WindForce PLC'}), (p:Product {name: 'Hydropower Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 62
MATCH (c:Company {name: 'WindForce PLC'}), (p:Product {name: 'EPC Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'WindForce PLC'}), (p:Product {name: 'O&M Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'WindForce PLC'}), (p:Product {name: 'Electric Vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'WindForce PLC'}), (p:Product {name: 'Satva e-bikes'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'WindForce PLC'}), (p:Product {name: 'Battery Energy Storage Systems'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Group Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6902690000, r.year = 2025;

// Query 68
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Group Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5851800000, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3015244000, r.year = 2025;

// Query 70
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2855838000, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Profit Before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2949902000, r.year = 2025;

// Query 72
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Profit Before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2555104000, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2249690000, r.year = 2025;

// Query 74
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1750594000, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Profit Attributable to Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1787078000, r.year = 2025;

// Query 76
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Profit Attributable to Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1549546000, r.year = 2024;

// Query 77
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Gross Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1350769000, r.year = 2025;

// Query 78
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Gross Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1350769000, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39424452000, r.year = 2025;

// Query 80
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38041861000, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18226456000, r.year = 2025;

// Query 82
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18226456000, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4510596000, r.year = 2025;

// Query 84
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4178500000, r.year = 2024;

// Query 85
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Equity Attributable to the Equity Holders of the Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23266655000, r.year = 2025;

// Query 86
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Equity Attributable to the Equity Holders of the Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22994184000, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13025179000, r.year = 2025;

// Query 88
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12582327000, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6100000000, r.year = 2025;

// Query 90
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5596330275.23, r.year = 2024;

// Query 91
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.22, r.year = 2025;

// Query 92
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.02, r.year = 2024;

// Query 93
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.65, r.year = 2025;

// Query 94
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.73, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45.0, r.year = 2025;

// Query 96
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43.0, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Interest Bearing Borrowing'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10427000000, r.year = 2025;

// Query 98
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Interest Bearing Borrowing'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9961000000, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26399000000, r.year = 2025;

// Query 100
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25460000000, r.year = 2024;

// Query 101
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28.0, r.year = 2025;

// Query 102
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28.0, r.year = 2024;

// Query 103
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18226455904, r.year = 2025;

// Query 104
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18226455904, r.year = 2024;

// Query 105
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4510595856, r.year = 2025;

// Query 106
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4178500475, r.year = 2024;

// Query 107
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Equity Attributable to the Equity Holders of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23266654950, r.year = 2025;

// Query 108
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Equity Attributable to the Equity Holders of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22994183928, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26399272168, r.year = 2025;

// Query 110
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25459533816, r.year = 2024;

// Query 111
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21442986932, r.year = 2025;

// Query 112
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20353270577, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9049038574, r.year = 2025;

// Query 114
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7542629214, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71889090, r.year = 2025;

// Query 116
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 403844914, r.year = 2024;

// Query 117
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Lease Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127444250, r.year = 2025;

// Query 118
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Lease Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 95766227, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Lease Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3783575, r.year = 2025;

// Query 120
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23300000000, r.year = 2025;

// Query 121
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Non-Controlling Interest'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3100000000, r.year = 2025;

// Query 122
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Debt Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10400000000, r.year = 2025;

// Query 123
MATCH (c:Company {name: 'WindForce PLC'}), (m:Metric {name: 'Carbon Credit Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 280000000, r.year = 2025;

// Query 124
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Renewgen Private Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 125
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Daily Life Renewable Energy (Pvt) Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 126
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Powergen Lanka (Pvt) Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 127
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Beta Power (Pvt) Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 128
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Joule Power (Pvt) Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 129
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Seguwantivu Wind Power Private Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 130
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Vidatamunai Wind Power Private Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 131
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Hiruras Power (Pvt) Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 132
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Vydexa (Lanka) Power Corporation (Pvt) Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 133
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Sunny Clime Lanka (Pvt) Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 134
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Seruwawila Photovoltaic (Pvt) Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 135
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Kebitigollewa Solar Power (Pvt) Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 136
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Solar Universe (Pvt) Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 137
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Sooryashakthi (Pvt) Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 138
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Tororo Pv Power Company Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 139
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Sky Solar (Pvt) Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 140
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Suryadhanavi (Pvt) Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 141
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Hirujanani (Pvt) Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 142
MATCH (p:Company {name: 'WindForce PLC'}), (c:Company {name: 'Energy Reclamation Private Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 143
MATCH (c:Company {name: 'WindForce PLC'}), (a:Company {name: 'Deloitte Advisory Services Pvt Ltd'}) MERGE (c)-[:AUDITED_BY {year: 2025}]->(a);

// Total queries: 143
// Generated on: 2025-10-02T19:22:45.112825
