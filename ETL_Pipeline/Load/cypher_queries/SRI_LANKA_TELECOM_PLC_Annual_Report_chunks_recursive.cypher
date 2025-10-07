// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Sri Lanka Telecom'}) ON CREATE SET c.id = 'sri_lanka_telecom', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1996-09-01');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Dr Mothilal de Silva'}) ON CREATE SET p.id = 'dr_mothilal_de_silva';

// Query 8
MERGE (p:Person {name: 'Mr Chan Chee Beng'}) ON CREATE SET p.id = 'mr_chan_chee_beng';

// Query 9
MERGE (p:Person {name: 'Mr Lawrence Paratz'}) ON CREATE SET p.id = 'mr_lawrence_paratz';

// Query 10
MERGE (p:Person {name: 'Mr V U Kumar'}) ON CREATE SET p.id = 'mr_v_u_kumar';

// Query 11
MERGE (p:Person {name: 'Mr Suren Amarasekera'}) ON CREATE SET p.id = 'mr_suren_amarasekera';

// Query 12
MERGE (p:Person {name: 'Mr Niel Unamboowe, PC'}) ON CREATE SET p.id = 'mr_niel_unamboowe_pc';

// Query 13
MERGE (p:Person {name: 'Mr Chandrasiri Kalupahana'}) ON CREATE SET p.id = 'mr_chandrasiri_kalupahana';

// Query 14
MERGE (p:Person {name: 'Mr T M Thilakarathne'}) ON CREATE SET p.id = 'mr_t_m_thilakarathne';

// Query 15
MERGE (p:Person {name: 'Mr Dilip Silva'}) ON CREATE SET p.id = 'mr_dilip_silva';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Dr Mothilal de Silva'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'Dr Mothilal de Silva'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'Mr Chan Chee Beng'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'Mr Lawrence Paratz'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'Mr V U Kumar'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'Mr Suren Amarasekera'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'Mr Niel Unamboowe, PC'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Mr Chandrasiri Kalupahana'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Mr T M Thilakarathne'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Mr Dilip Silva'}), (c:Company {name: 'Sri Lanka Telecom'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 27
// Step 5: Metrics;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 34
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 35
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 36
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
// Step 6: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111148000000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106418000000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11189000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4102000000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6037000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2651000000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3120000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3921000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.73, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.17, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.41, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.45, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.82, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.62, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.00, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.02, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 239161000000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 246338000000.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 91475000000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 88385000000.0, r.year = 2023;

// Query 59
// Step 7: Sectors;

// Query 60
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 61
// Step 8: IN_SECTOR Relationships;

// Query 62
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
// Step 9: Product Nodes;

// Query 64
MERGE (p:Product {name: 'Fixed telecommunication services'}) ON CREATE SET p.id = 'fixed_telecommunication_services';

// Query 65
MERGE (p:Product {name: 'Mobile telecommunication services'}) ON CREATE SET p.id = 'mobile_telecommunication_services';

// Query 66
MERGE (p:Product {name: 'IPTV services'}) ON CREATE SET p.id = 'iptv_services';

// Query 67
MERGE (p:Product {name: 'Directory services'}) ON CREATE SET p.id = 'directory_services';

// Query 68
MERGE (p:Product {name: 'Digital Marketing'}) ON CREATE SET p.id = 'digital_marketing';

// Query 69
MERGE (p:Product {name: 'Digital Solutions'}) ON CREATE SET p.id = 'digital_solutions';

// Query 70
MERGE (p:Product {name: 'Voice services'}) ON CREATE SET p.id = 'voice_services';

// Query 71
MERGE (p:Product {name: 'Broadband services'}) ON CREATE SET p.id = 'broadband_services';

// Query 72
MERGE (p:Product {name: 'Domestic leased circuits'}) ON CREATE SET p.id = 'domestic_leased_circuits';

// Query 73
MERGE (p:Product {name: 'International leased circuits'}) ON CREATE SET p.id = 'international_leased_circuits';

// Query 74
MERGE (p:Product {name: 'Satellite up-link'}) ON CREATE SET p.id = 'satellite_up_link';

// Query 75
MERGE (p:Product {name: 'Maritime transmission'}) ON CREATE SET p.id = 'maritime_transmission';

// Query 76
MERGE (p:Product {name: 'Educational services'}) ON CREATE SET p.id = 'educational_services';

// Query 77
MERGE (p:Product {name: 'Fibre To The Home (FTTH) Network'}) ON CREATE SET p.id = 'fibre_to_the_home_network';

// Query 78
MERGE (p:Product {name: 'Fixed 4G LTE'}) ON CREATE SET p.id = 'fixed_4g_lte';

// Query 79
MERGE (p:Product {name: 'Next Generation Network (NGN)'}) ON CREATE SET p.id = 'next_generation_network';

// Query 80
MERGE (p:Product {name: 'National Backbone Network (NBN)'}) ON CREATE SET p.id = 'national_backbone_network';

// Query 81
MERGE (p:Product {name: 'Optical fibre'}) ON CREATE SET p.id = 'optical_fibre';

// Query 82
MERGE (p:Product {name: 'ADSL2+'}) ON CREATE SET p.id = 'adsl2_plus';

// Query 83
MERGE (p:Product {name: 'Multiple international submarine cable networks'}) ON CREATE SET p.id = 'multiple_international_submarine_cable_networks';

// Query 84
MERGE (p:Product {name: 'Software-defined wide area network (SD-WAN) technology'}) ON CREATE SET p.id = 'software_defined_wide_area_network_technology';

// Query 85
MERGE (p:Product {name: 'Data centre'}) ON CREATE SET p.id = 'data_centre';

// Query 86
MERGE (p:Product {name: 'Cloud services'}) ON CREATE SET p.id = 'cloud_services';

// Query 87
MERGE (p:Product {name: '4G LTE/4.5G LTE Advanced/4.5G Pro LTE Advanced Pro'}) ON CREATE SET p.id = '4g_lte_4_5g_lte_advanced_4_5g_pro_lte_advanced_pro';

// Query 88
MERGE (p:Product {name: 'VoLTE/VoWiFi'}) ON CREATE SET p.id = 'volte_vowifi';

// Query 89
MERGE (p:Product {name: '5G-ready narrowband IoT (NBIoT)'}) ON CREATE SET p.id = '5g_ready_narrowband_iot_nbiot';

// Query 90
MERGE (p:Product {name: 'Mission critical solutions'}) ON CREATE SET p.id = 'mission_critical_solutions';

// Query 91
MERGE (p:Product {name: 'Enterprise wireless solutions'}) ON CREATE SET p.id = 'enterprise_wireless_solutions';

// Query 92
MERGE (p:Product {name: '5G trials'}) ON CREATE SET p.id = '5g_trials';

// Query 93
// Step 10: OFFERS Relationships;

// Query 94
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Fixed telecommunication services'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Mobile telecommunication services'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'IPTV services'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Directory services'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Digital Marketing'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Digital Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Voice services'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Broadband services'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Domestic leased circuits'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'International leased circuits'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Satellite up-link'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Maritime transmission'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Educational services'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Fibre To The Home (FTTH) Network'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Fixed 4G LTE'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Next Generation Network (NGN)'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'National Backbone Network (NBN)'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Optical fibre'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'ADSL2+'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Multiple international submarine cable networks'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Software-defined wide area network (SD-WAN) technology'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Data centre'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Cloud services'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: '4G LTE/4.5G LTE Advanced/4.5G Pro LTE Advanced Pro'}) MERGE (c)-[:OFFERS]->(p);

// Query 118
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'VoLTE/VoWiFi'}) MERGE (c)-[:OFFERS]->(p);

// Query 119
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: '5G-ready narrowband IoT (NBIoT)'}) MERGE (c)-[:OFFERS]->(p);

// Query 120
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Mission critical solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 121
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: 'Enterprise wireless solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 122
MATCH (c:Company {name: 'Sri Lanka Telecom'}), (p:Product {name: '5G trials'}) MERGE (c)-[:OFFERS]->(p);

// Query 123
// Step 11: Company-Company Relationships (OWNS);

// Query 124
MERGE (child:Company {name: 'Sri Lanka Telecom (Services)'}) ON CREATE SET child.id = 'sri_lanka_telecom_services';

// Query 125
MATCH (parent:Company {name: 'Sri Lanka Telecom'}), (child:Company {name: 'Sri Lanka Telecom (Services)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-04-01');

// Total queries: 125
// Generated on: 2025-10-03T01:14:37.219091
