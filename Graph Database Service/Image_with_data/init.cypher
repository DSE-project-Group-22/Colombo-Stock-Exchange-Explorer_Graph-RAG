// === 1. Abans Electricals PLC (FY 2025) ===
// -- Nodes
MERGE (:Company {id:'C_AEPLC', name:'Abans Electricals PLC', listed_on:'CSE'});
MERGE (:Company {id:'C_APLC', name:'Abans PLC'});
MERGE (:Sector {id:'S_MANU', name:'Manufacturing'});
MERGE (:Sector {id:'S_SERVICES', name:'Services'});
MERGE (:Sector {id:'S_TRADING', name:'Trading'});
MERGE (:Sector {id:'S_SOLAR', name:'Solar Installation'});
MERGE (:Product {id:'PROD_WM', name:'Washing Machines'});
MERGE (:Product {id:'PROD_COOKERS', name:'Cookers'});
MERGE (:Product {id:'PROD_REPAIRS', name:'Repairs, installations & spares'});
MERGE (:Product {id:'PROD_SOLAR_PV', name:'Rooftop Solar PV Systems'});
MERGE (:Metric {id:'M_REVENUE', name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});
MERGE (:Metric {id:'M_ASSETS', name:'Total Assets', unit:'LKR'});
MERGE (:Metric {id:'M_EPS', name:'Basic EPS', unit:'LKR'});
MERGE (:Person {id:'P_APE', name:'Mrs. Aban Pestonjee'});
MERGE (:Person {id:'P_SD',  name:'Mrs. Saroshi Dubash'});
MERGE (:Person {id:'P_KS',  name:'Mr. Kumar Se Silva'});
MERGE (:Person {id:'P_DP',  name:'Mr. D M R Phillips'});
MERGE (:Person {id:'P_RS',  name:'Mr. Rajaratnam Selvaskandan'});

// -- Relationships
MATCH 
  (ae:Company {id:'C_AEPLC'}), (ap:Company {id:'C_APLC'}),
  (p_ape:Person {id:'P_APE'}), (p_sd:Person {id:'P_SD'}), (p_ks:Person {id:'P_KS'}), (p_dp:Person {id:'P_DP'}), (p_rs:Person {id:'P_RS'}),
  (s_manu:Sector {id:'S_MANU'}), (s_serv:Sector {id:'S_SERVICES'}), (s_trad:Sector {id:'S_TRADING'}), (s_solar:Sector {id:'S_SOLAR'}),
  (prod_wm:Product {id:'PROD_WM'}), (prod_ckr:Product {id:'PROD_COOKERS'}), (prod_rpr:Product {id:'PROD_REPAIRS'}), (prod_spv:Product {id:'PROD_SOLAR_PV'}),
  (m_rev:Metric {id:'M_REVENUE'}), (m_np:Metric {id:'M_NET_PROFIT'}), (m_assets:Metric {id:'M_ASSETS'}), (m_eps:Metric {id:'M_EPS'})
MERGE (ap)-[:OWNS           {pct:0.48,  as_of:date('2025-03-31')}]->(ae)
MERGE (p_ape)-[:DIRECTOR_OF  {role:'Chairperson',               as_of:date('2025-03-31')}]->(ae)
MERGE (p_sd)-[:DIRECTOR_OF   {role:'Managing Director',          as_of:date('2025-03-31')}]->(ae)
MERGE (p_ks)-[:DIRECTOR_OF   {role:'Independent Director',       as_of:date('2025-03-31')}]->(ae)
MERGE (p_dp)-[:DIRECTOR_OF   {role:'Independent Director',       as_of:date('2025-03-31')}]->(ae)
MERGE (p_rs)-[:DIRECTOR_OF   {role:'Senior Independent Director', as_of:date('2025-03-31')}]->(ae)
MERGE (p_ape)-[:OWNS_SHARES   {count:309596,                    as_of:date('2025-03-31')}]->(ae)
MERGE (p_sd)-[:OWNS_SHARES    {count:334628,                    as_of:date('2025-03-31')}]->(ae)
MERGE (ae)-[:IN_SECTOR       ]->(s_manu)
MERGE (ae)-[:IN_SECTOR       ]->(s_serv)
MERGE (ae)-[:IN_SECTOR       ]->(s_trad)
MERGE (ae)-[:IN_SECTOR       ]->(s_solar)
MERGE (ae)-[:OFFERS          ]->(prod_wm)
MERGE (ae)-[:OFFERS          ]->(prod_ckr)
MERGE (ae)-[:OFFERS          ]->(prod_rpr)
MERGE (ae)-[:OFFERS          ]->(prod_spv)
MERGE (ae)-[:HAS_METRIC      {year:2025, value:6707213593}]->(m_rev)
MERGE (ae)-[:HAS_METRIC      {year:2025, value:501466798} ]->(m_np)
MERGE (ae)-[:HAS_METRIC      {as_of:date('2025-03-31'), value:5254019511}]->(m_assets)
MERGE (ae)-[:HAS_METRIC      {year:2025, value:98.12}      ]->(m_eps);


// === 2. Abans Finance PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_AFPLC', name:'Abans Finance PLC', founded_on:date('2005-04-08'), listed_on:'CSE'});
MERGE (:Company {id:'C_APLC', name:'Abans PLC'});
MERGE (:Company {id:'C_IRONWOOD', name:'Ironwood Investment Holding Pvt Ltd'});
MERGE (:Company {id:'C_EY', name:'Ernst & Young'});
MERGE (:Person {id:'P_KJP', name:'Mr. Kalugamage John Cecil Perera'});
MERGE (:Person {id:'P_RP',  name:'Mr. Rusi Pestonjee'});
MERGE (:Person {id:'P_HE',  name:'Mr. Hiran Embuldeniya'});
MERGE (:Person {id:'P_TA',  name:'Mr. Thulci Aluwihare'});
MERGE (:Person {id:'P_DSR', name:'Mrs. Dishana Sirinimali Ratnayake'});
MERGE (:Person {id:'P_SSB', name:'Mr. S. M. S. Sanjaya Bandara'});
MERGE (:Person {id:'P_DS',  name:'Dharshan Silva'});
MERGE (:Person {id:'P_SD',  name:'Mrs. Saroshi Dubash'});
MERGE (:Person {id:'P_APE', name:'Mrs. Aban Pestonjee'});
MERGE (:Sector {id:'S_NBFI', name:'Non-Banking Financial Institution'});
MERGE (:Product {id:'PROD_LEASING', name:'Finance Leasing'});
MERGE (:Product {id:'PROD_HIREPUR', name:'Hire Purchase'});
MERGE (:Product {id:'PROD_GOLDLOAN', name:'Gold Loan'});
MERGE (:Metric {id:'M_INCOME', name:'Total Income', unit:'LKR'});
MERGE (:Metric {id:'M_ASSETS', name:'Total Assets', unit:'LKR'});
MERGE (:Metric {id:'M_EPS',   name:'Basic EPS', unit:'LKR'});

// -- Relationships
MATCH
  (af:Company {id:'C_AFPLC'}), (ap:Company {id:'C_APLC'}), (ironwood:Company {id:'C_IRONWOOD'}), (ey:Company {id:'C_EY'}),
  (p_kjp:Person {id:'P_KJP'}), (p_rp:Person {id:'P_RP'}), (p_he:Person {id:'P_HE'}), (p_ta:Person {id:'P_TA'}),
  (p_dsr:Person {id:'P_DSR'}), (p_ssb:Person {id:'P_SSB'}), (p_ds:Person {id:'P_DS'}), (p_sd:Person {id:'P_SD'}), (p_ape:Person {id:'P_APE'}),
  (sec_nbfi:Sector {id:'S_NBFI'}),
  (prod_l:Product {id:'PROD_LEASING'}), (prod_hp:Product {id:'PROD_HIREPUR'}), (prod_g:Product {id:'PROD_GOLDLOAN'}),
  (m_inc:Metric {id:'M_INCOME'}), (m_assets:Metric {id:'M_ASSETS'}), (m_eps:Metric {id:'M_EPS'})
MERGE (ap)-[:OWNS           {pct:0.5022, as_of:date('2024-03-31')}]->(af)
MERGE (ironwood)-[:OWNS      {pct:0.4171, as_of:date('2024-03-31')}]->(af)
MERGE (p_kjp)-[:DIRECTOR_OF  {role:'Chairman/Independent Non-Executive Director', as_of:date('2024-03-31')}]->(af)
MERGE (p_rp)-[:DIRECTOR_OF   {role:'Non-Executive Director',                 as_of:date('2024-03-31')}]->(af)
MERGE (p_he)-[:DIRECTOR_OF   {role:'Non-Independent Non-Executive Director',  as_of:date('2024-03-31')}]->(af)
MERGE (p_ta)-[:DIRECTOR_OF   {role:'Independent Non-Executive Director',     as_of:date('2024-03-31')}]->(af)
MERGE (p_dsr)-[:DIRECTOR_OF  {role:'Independent Non-Executive Director',     as_of:date('2024-03-31')}]->(af)
MERGE (p_ssb)-[:DIRECTOR_OF  {role:'Independent Non-Executive Director',     as_of:date('2024-03-31')}]->(af)
MERGE (p_ds)-[:HOLDS_POSITION{title:'Chief Executive Officer',                 as_of:date('2024-03-31')}]->(af)
MERGE (p_sd)-[:OWNS_SHARES   {count:213039,                                        as_of:date('2024-03-31')}]->(af)
MERGE (p_ape)-[:OWNS_SHARES  {count:80000,                                         as_of:date('2024-03-31')}]->(af)
MERGE (af)-[:IN_SECTOR       ]->(sec_nbfi)
MERGE (af)-[:OFFERS          ]->(prod_l)
MERGE (af)-[:OFFERS          ]->(prod_hp)
MERGE (af)-[:OFFERS          {status:'planned'}]->(prod_g)
MERGE (af)-[:HAS_METRIC      {year:2024, value:2863208000}]->(m_inc)
MERGE (af)-[:HAS_METRIC      {as_of:date('2024-03-31'), value:11010321000}]->(m_assets)
MERGE (af)-[:HAS_METRIC      {year:2024, value:1.42}      ]->(m_eps)
MERGE (af)-[:AUDITED_BY      {year:2024}                   ]->(ey);


// === 3. Access Engineering PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_AEPLC2', name:'Access Engineering PLC', founded_on:date('2001-07-02'), listed_on:'CSE'});
MERGE (:Company {id:'C_AIPL', name:'Access International (Private) Limited'});
MERGE (:Company {id:'C_EY',   name:'Ernst & Young'});
MERGE (:Person {id:'P_JCJ',   name:'Mr. J C Joshua'});
MERGE (:Person {id:'P_SHS',   name:'Mr. S H S Mendis'});
MERGE (:Person {id:'P_VKH',   name:'Mr. V K Hettiarachchi'});
MERGE (:Sector {id:'S_ENG_CONST', name:'Engineering & Construction'});
MERGE (:Product {id:'PROD_CIVIL_ENG', name:'Civil Engineering & Construction'});
MERGE (:Metric {id:'M_REVENUE', name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (acc:Company {id:'C_AEPLC2'}), (aip:Company {id:'C_AIPL'}), (ey:Company {id:'C_EY'}),
  (p_jcj:Person {id:'P_JCJ'}), (p_shs:Person {id:'P_SHS'}), (p_vkh:Person {id:'P_VKH'}),
  (sec:Sector {id:'S_ENG_CONST'}), (prod:Product {id:'PROD_CIVIL_ENG'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (aip)-[:OWNS      {pct:0.5212, as_of:date('2024-03-31')}]->(acc)
MERGE (p_jcj)-[:DIRECTOR_OF {role:'Non-Executive Chairman', as_of:date('2024-03-31')}]->(acc)
MERGE (p_shs)-[:DIRECTOR_OF {role:'Managing Director',        as_of:date('2024-03-31')}]->(acc)
MERGE (p_vkh)-[:HOLDS_POSITION {title:'Chief Operating Officer', as_of:date('2024-03-31')}]->(acc)
MERGE (p_jcj)-[:OWNS_SHARES   {count:156800000,               as_of:date('2024-03-31')}]->(acc)
MERGE (acc)-[:IN_SECTOR       ]->(sec)
MERGE (acc)-[:OFFERS          ]->(prod)
MERGE (acc)-[:HAS_METRIC      {year:2024, value:37288582693}]->(rev)
MERGE (acc)-[:HAS_METRIC      {year:2024, value:4606193736} ]->(np)
MERGE (acc)-[:AUDITED_BY      {year:2024}                   ]->(ey);


// === 4. ACL Cables PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_ACLCBL', name:'ACL Cables PLC', founded_on:date('1962-10-03'), listed_on:'CSE'});
MERGE (:Company {id:'C_EY',    name:'Ernst & Young'});
MERGE (:Person {id:'P_UGM',    name:'Mr. U. G. Madanayake'});
MERGE (:Person {id:'P_SCM',    name:'Mr. S. C. Madanayake'});
MERGE (:Person {id:'P_AJ',     name:'Mr. Ajit Jayaratne'});
MERGE (:Sector {id:'S_POWER_NRG', name:'Power and Energy'});
MERGE (:Product {id:'PROD_CABLES',  name:'Cables and Conductors'});
MERGE (:Product {id:'PROD_SOLARCBL',name:'Solar Cables'});
MERGE (:Metric {id:'M_REVENUE', name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (acl:Company {id:'C_ACLCBL'}), (ey:Company {id:'C_EY'}),
  (p_ugm:Person {id:'P_UGM'}), (p_scm:Person {id:'P_SCM'}), (p_aj:Person {id:'P_AJ'}),
  (sec:Sector {id:'S_POWER_NRG'}), (prod_c:Product {id:'PROD_CABLES'}), (prod_s:Product {id:'PROD_SOLARCBL'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (p_ugm)-[:DIRECTOR_OF {role:'Executive Chairman',                as_of:date('2024-03-31')}]->(acl)
MERGE (p_scm)-[:DIRECTOR_OF {role:'Managing Director',                 as_of:date('2024-03-31')}]->(acl)
MERGE (p_aj)-[:DIRECTOR_OF  {role:'Independent Non-Executive Director', as_of:date('2024-03-31')}]->(acl)
MERGE (p_ugm)-[:OWNS_SHARES {count:48312000,                           as_of:date('2024-03-31')}]->(acl)
MERGE (acl)-[:IN_SECTOR       ]->(sec)
MERGE (acl)-[:OFFERS          ]->(prod_c)
MERGE (acl)-[:OFFERS          ]->(prod_s)
MERGE (acl)-[:HAS_METRIC      {year:2024, value:36413836000}]->(rev)
MERGE (acl)-[:HAS_METRIC      {year:2024, value:3425541000} ]->(np)
MERGE (acl)-[:AUDITED_BY      {year:2024}                   ]->(ey);


// === 5. ACL Plastics PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_ACLPLAS', name:'ACL Plastics PLC', founded_on:date('1982-10-14'), listed_on:'CSE'});
MERGE (:Company {id:'C_ACLCBL', name:'ACL Cables PLC'});
MERGE (:Company {id:'C_EY',     name:'Ernst & Young'});
MERGE (:Person {id:'P_UGM',     name:'Mr. U. G. Madanayake'});
MERGE (:Person {id:'P_SCM',     name:'Mr. S. C. Madanayake'});
MERGE (:Person {id:'P_AJ',      name:'Mr. Ajit Jayaratne'});
MERGE (:Sector {id:'S_MANU',    name:'Manufacturing'});
MERGE (:Product {id:'PROD_UPVC',name:'uPVC Pipes, Fittings and Conduits'});
MERGE (:Metric {id:'M_REVENUE', name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (child:Company {id:'C_ACLPLAS'}), (parent:Company {id:'C_ACLCBL'}), (ey:Company {id:'C_EY'}),
  (p_ugm:Person {id:'P_UGM'}), (p_scm:Person {id:'P_SCM'}), (p_aj:Person {id:'P_AJ'}),
  (sec:Sector {id:'S_MANU'}), (prod:Product {id:'PROD_UPVC'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (parent)-[:OWNS           {pct:0.8539, as_of:date('2024-03-31')}]->(child)
MERGE (p_ugm)-[:DIRECTOR_OF    {role:'Executive Chairman',                as_of:date('2024-03-31')}]->(child)
MERGE (p_scm)-[:DIRECTOR_OF    {role:'Managing Director',                 as_of:date('2024-03-31')}]->(child)
MERGE (p_aj)-[:DIRECTOR_OF     {role:'Independent Non-Executive Director',as_of:date('2024-03-31')}]->(child)
MERGE (child)-[:IN_SECTOR       ]->(sec)
MERGE (child)-[:OFFERS          ]->(prod)
MERGE (child)-[:HAS_METRIC      {year:2024, value:1514792058} ]->(rev)
MERGE (child)-[:HAS_METRIC      {year:2024, value:170086188} ]->(np)
MERGE (child)-[:AUDITED_BY      {year:2024}                   ]->(ey);


// === 6. ACME Printing & Packaging PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_ACME', name:'ACME Printing & Packaging PLC', founded_on:date('1949-08-29'), listed_on:'CSE'});
MERGE (:Company {id:'C_RICHARDSON', name:'Richardson Holdings (Pvt) Limited'});
MERGE (:Company {id:'C_EY',        name:'Ernst & Young'});
MERGE (:Person {id:'P_AH',         name:'Mr. A. Hettiarachchy'});
MERGE (:Person {id:'P_NCAMC',      name:'Mr. N. C. A. M. Cooray'});
MERGE (:Sector {id:'S_FLEXPACK',   name:'Flexible Packaging'});
MERGE (:Product {id:'PROD_FLEXPACK',name:'Flexible Packaging Materials'});
MERGE (:Metric {id:'M_REVENUE',     name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT',  name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (acme:Company {id:'C_ACME'}), (richardson:Company {id:'C_RICHARDSON'}), (ey:Company {id:'C_EY'}),
  (p_ah:Person {id:'P_AH'}), (p_ncamc:Person {id:'P_NCAMC'}),
  (sec:Sector {id:'S_FLEXPACK'}), (prod:Product {id:'PROD_FLEXPACK'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (richardson)-[:OWNS      {pct:0.4000, as_of:date('2024-03-31')}]->(acme)
MERGE (p_ah)-[:DIRECTOR_OF     {role:'Non-Executive Chairman', as_of:date('2024-03-31')}]->(acme)
MERGE (p_ncamc)-[:DIRECTOR_OF  {role:'Managing Director',       as_of:date('2024-03-31')}]->(acme)
MERGE (p_ah)-[:OWNS_SHARES     {pct:0.2416,                     as_of:date('2024-03-31')}]->(acme)
MERGE (acme)-[:IN_SECTOR       ]->(sec)
MERGE (acme)-[:OFFERS          ]->(prod)
MERGE (acme)-[:HAS_METRIC      {year:2024, value:1180682785} ]->(rev)
MERGE (acme)-[:HAS_METRIC      {year:2024, value:-134809796} ]->(np)
MERGE (acme)-[:AUDITED_BY      {year:2024}                   ]->(ey);


// === 7. Agalawatte Plantations PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_AGALAWATTE', name:'Agalawatte Plantations PLC', founded_on:date('1992-06-11'), listed_on:'CSE'});
MERGE (:Company {id:'C_DAMRO',      name:'Damro Plantations PLC'});
MERGE (:Company {id:'C_EY',         name:'Ernst & Young'});
MERGE (:Person {id:'P_AMP',         name:'Mr. A. M. Pandithage'});
MERGE (:Person {id:'P_PSAS',        name:'Dr. P. S. A. Selliah'});
MERGE (:Person {id:'P_GGPDLP',      name:'Mr. G. G. P. D. L. Perera'});
MERGE (:Sector {id:'S_PLANTATIONS', name:'Plantations'});
MERGE (:Product {id:'PROD_TEA',     name:'Tea'});
MERGE (:Product {id:'PROD_RUBBER',  name:'Rubber'});
MERGE (:Product {id:'PROD_OILPALM', name:'Oil Palm'});
MERGE (:Metric {id:'M_REVENUE',     name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT',  name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (agalawatte:Company {id:'C_AGALAWATTE'}), (damro:Company {id:'C_DAMRO'}), (ey:Company {id:'C_EY'}),
  (p_amp:Person {id:'P_AMP'}), (p_psas:Person {id:'P_PSAS'}), (p_ggp:Person {id:'P_GGPDLP'}),
  (sec:Sector {id:'S_PLANTATIONS'}), (prod_t:Product {id:'PROD_TEA'}), (prod_r:Product {id:'PROD_RUBBER'}), (prod_o:Product {id:'PROD_OILPALM'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (damro)-[:OWNS      {pct:0.8926, as_of:date('2024-03-31')}]->(agalawatte)
MERGE (p_amp)-[:DIRECTOR_OF    {role:'Non-Executive Chairman', as_of:date('2024-03-31')}]->(agalawatte)
MERGE (p_psas)-[:DIRECTOR_OF   {role:'Deputy Chairman, Non-Executive', as_of:date('2024-03-31')}]->(agalawatte)
MERGE (p_ggp)-[:DIRECTOR_OF    {role:'Managing Director', as_of:date('2024-03-31')}]->(agalawatte)
MERGE (agalawatte)-[:IN_SECTOR  ]->(sec)
MERGE (agalawatte)-[:OFFERS     ]->(prod_t)
MERGE (agalawatte)-[:OFFERS     ]->(prod_r)
MERGE (agalawatte)-[:OFFERS     ]->(prod_o)
MERGE (agalawatte)-[:HAS_METRIC {year:2024, value:9650111842}]->(rev)
MERGE (agalawatte)-[:HAS_METRIC {year:2024, value:-1514586819}]->(np)
MERGE (agalawatte)-[:AUDITED_BY {year:2024}                   ]->(ey);


// === 8. Agarapatana Plantations PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_AGARAPATANA', name:'Agarapatana Plantations PLC', founded_on:date('1992-06-22'), listed_on:'CSE'});
MERGE (:Company {id:'C_LANKEMPLAN', name:'Lankem Plantation Holdings PLC'});
MERGE (:Company {id:'C_EY',         name:'Ernst & Young'});
MERGE (:Person {id:'P_SMLEKY',      name:'Mr. S. M. L. E. K. Yatawara'});
MERGE (:Person {id:'P_DM',          name:'Mr. Denham Madena'});
MERGE (:Person {id:'P_SDRA',        name:'Mr. S. D. R. Arudpragasam'});
MERGE (:Sector {id:'S_PLANTATIONS', name:'Plantations'});
MERGE (:Product {id:'PROD_TEA',     name:'Tea'});
MERGE (:Metric {id:'M_REVENUE',     name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT',  name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (agarapatana:Company {id:'C_AGARAPATANA'}), (lankem:Company {id:'C_LANKEMPLAN'}), (ey:Company {id:'C_EY'}),
  (p_sml:Person {id:'P_SMLEKY'}), (p_dm:Person {id:'P_DM'}), (p_sdr:Person {id:'P_SDRA'}),
  (sec:Sector {id:'S_PLANTATIONS'}), (prod_t:Product {id:'PROD_TEA'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (lankem)-[:OWNS      {pct:0.6557, as_of:date('2024-03-31')}]->(agarapatana)
MERGE (p_sml)-[:DIRECTOR_OF {role:'Independent Non-Executive Chairman', as_of:date('2024-03-31')}]->(agarapatana)
MERGE (p_dm)-[:HOLDS_POSITION{title:'Chief Executive Officer', as_of:date('2024-03-31')}]->(agarapatana)
MERGE (p_sdr)-[:DIRECTOR_OF {role:'Non-Executive Director', as_of:date('2024-03-31')}]->(agarapatana)
MERGE (agarapatana)-[:IN_SECTOR  ]->(sec)
MERGE (agarapatana)-[:OFFERS     ]->(prod_t)
MERGE (agarapatana)-[:HAS_METRIC {year:2024, value:10751469000}]->(rev)
MERGE (agarapatana)-[:HAS_METRIC {year:2024, value:1223656000}]->(np)
MERGE (agarapatana)-[:AUDITED_BY {year:2024}                   ]->(ey);


// === 9. Agstar PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_AGSTAR', name:'Agstar PLC', founded_on:date('2004-06-30'), listed_on:'CSE'});
MERGE (:Company {id:'C_BAUR',   name:'A. Baur & Co. (Pvt) Ltd.'});
MERGE (:Company {id:'C_EY',     name:'Ernst & Young'});
MERGE (:Person {id:'P_AKMA',    name:'Mr. A. K. M. A. W. N. Alawwa'});
MERGE (:Person {id:'P_APW',     name:'Mr. A. P. Weerasekera'});
MERGE (:Person {id:'P_NCM',     name:'Mr. N. C. Madanayake'});
MERGE (:Sector {id:'S_AGRI',    name:'Agriculture'});
MERGE (:Product {id:'PROD_FERTILIZER', name:'Fertilizer'});
MERGE (:Product {id:'PROD_AGROCHEM',   name:'Agrochemicals and Seeds'});
MERGE (:Metric {id:'M_REVENUE',     name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT',  name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (agstar:Company {id:'C_AGSTAR'}), (baur:Company {id:'C_BAUR'}), (ey:Company {id:'C_EY'}),
  (p_akm:Person {id:'P_AKMA'}), (p_apw:Person {id:'P_APW'}), (p_ncm:Person {id:'P_NCM'}),
  (sec:Sector {id:'S_AGRI'}), (prod_f:Product {id:'PROD_FERTILIZER'}), (prod_a:Product {id:'PROD_AGROCHEM'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (baur)-[:OWNS     {pct:0.5640, as_of:date('2024-03-31')}]->(agstar)
MERGE (p_akm)-[:DIRECTOR_OF {role:'Non-Executive Chairman', as_of:date('2024-03-31')}]->(agstar)
MERGE (p_apw)-[:DIRECTOR_OF {role:'Managing Director',       as_of:date('2024-03-31')}]->(agstar)
MERGE (p_ncm)-[:DIRECTOR_OF{role:'Non-Executive Director',   as_of:date('2024-03-31')}]->(agstar)
MERGE (agstar)-[:IN_SECTOR ]->(sec)
MERGE (agstar)-[:OFFERS    ]->(prod_f)
MERGE (agstar)-[:OFFERS    ]->(prod_a)
MERGE (agstar)-[:HAS_METRIC{year:2024, value:9699579726}]->(rev)
MERGE (agstar)-[:HAS_METRIC{year:2024, value:688779819} ]->(np)
MERGE (agstar)-[:AUDITED_BY{year:2024}                  ]->(ey);


// === 10. Aitken Spence Hotel Holdings PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_ASHH',   name:'Aitken Spence Hotel Holdings PLC', founded_on:date('1978-09-15'), listed_on:'CSE'});
MERGE (:Company {id:'C_ASPLC',  name:'Aitken Spence PLC'});
MERGE (:Company {id:'C_KPMG',   name:'KPMG'});
MERGE (:Person {id:'P_DSTJ',    name:'Ms. D. S. T. Jayawardena'});
MERGE (:Person {id:'P_SCMP',    name:'Ms. S. C. M. A. N. J. Perera'});
MERGE (:Sector {id:'S_HOTELS',  name:'Hotels and Travels'});
MERGE (:Product {id:'PROD_HOTEL',name:'Hoteliering'});
MERGE (:Metric {id:'M_REVENUE', name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (ashh:Company {id:'C_ASHH'}), (asplc:Company {id:'C_ASPLC'}), (kpmg:Company {id:'C_KPMG'}),
  (p_dstj:Person {id:'P_DSTJ'}), (p_scmp:Person {id:'P_SCMP'}),
  (sec:Sector {id:'S_HOTELS'}), (prod:Product {id:'PROD_HOTEL'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (asplc)-[:OWNS      {pct:0.6213, as_of:date('2024-03-31')}]->(ashh)
MERGE (p_dstj)-[:DIRECTOR_OF {role:'Non-Executive Chairperson', as_of:date('2024-03-31')}]->(ashh)
MERGE (p_scmp)-[:DIRECTOR_OF {role:'Managing Director',           as_of:date('2024-03-31')}]->(ashh)
MERGE (ashh)-[:IN_SECTOR     ]->(sec)
MERGE (ashh)-[:OFFERS        ]->(prod)
MERGE (ashh)-[:HAS_METRIC    {year:2024, value:43157481000}]->(rev)
MERGE (ashh)-[:HAS_METRIC    {year:2024, value:8435531000} ]->(np)
MERGE (ashh)-[:AUDITED_BY    {year:2024}                   ]->(kpmg);


// === 11. Aitken Spence Plantation Managements PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_ASPM',   name:'Aitken Spence Plantation Managements PLC', founded_on:date('1992-10-29')});
MERGE (:Company {id:'C_ASPLC',  name:'Aitken Spence PLC'});
MERGE (:Company {id:'C_ELPITIYA', name:'Elpitiya Plantations PLC'});
MERGE (:Company {id:'C_EY',     name:'Ernst & Young'});
MERGE (:Person {id:'P_JMSJ',    name:'Dr. J. M. S. de S. Jayaratne'});
MERGE (:Sector {id:'S_PLANT_MGT', name:'Plantation Management Services'});
MERGE (:Product {id:'PROD_PLANT_MGT', name:'Plantation Management Services'});
MERGE (:Metric {id:'M_REVENUE', name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (aspm:Company {id:'C_ASPM'}), (asplc:Company {id:'C_ASPLC'}), (elpitiya:Company {id:'C_ELPITIYA'}), (ey:Company {id:'C_EY'}),
  (p_jmsj:Person {id:'P_JMSJ'}),
  (sec:Sector {id:'S_PLANT_MGT'}), (prod:Product {id:'PROD_PLANT_MGT'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (asplc)-[:OWNS      {pct:0.7200, as_of:date('2024-03-31')}]->(aspm)
MERGE (p_jmsj)-[:DIRECTOR_OF {role:'Non-Executive Chairman', as_of:date('2024-03-31')}]->(aspm)
MERGE (aspm)-[:IN_SECTOR     ]->(sec)
MERGE (aspm)-[:OFFERS        ]->(prod)
MERGE (aspm)-[:MANAGES       {description:'Provides management services'}]->(elpitiya)
MERGE (aspm)-[:HAS_METRIC    {year:2024, value:198161714} ]->(rev)
MERGE (aspm)-[:HAS_METRIC    {year:2024, value:102112058} ]->(np)
MERGE (aspm)-[:AUDITED_BY    {year:2024}                   ]->(ey);


// === 12. Aitken Spence PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_ASPLC', name:'Aitken Spence PLC', founded_on:date('1951-12-01'), listed_on:'CSE'});
MERGE (:Company {id:'C_MELSTACORP', name:'Melstacorp PLC'});
MERGE (:Company {id:'C_KPMG',       name:'KPMG'});
MERGE (:Person {id:'P_DHSJ',        name:'Mr. D. H. S. Jayawardena'});
MERGE (:Person {id:'P_JMSJ',        name:'Dr. J. M. S. de S. Jayaratne'});
MERGE (:Person {id:'P_DSTJ',        name:'Ms. D. S. T. Jayawardena'});
MERGE (:Sector {id:'S_DIVERSIFIED', name:'Diversified Holdings'});
MERGE (:Product {id:'PROD_TOURISM', name:'Tourism'});
MERGE (:Product {id:'PROD_LOGISTICS', name:'Maritime & Freight Logistics'});
MERGE (:Metric {id:'M_REVENUE',     name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT',  name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (asplc:Company {id:'C_ASPLC'}), (melsta:Company {id:'C_MELSTACORP'}), (kpmg:Company {id:'C_KPMG'}),
  (p_dhsj:Person {id:'P_DHSJ'}), (p_jmsj:Person {id:'P_JMSJ'}), (p_dstj:Person {id:'P_DSTJ'}),
  (sec:Sector {id:'S_DIVERSIFIED'}), (prod_t:Product {id:'PROD_TOURISM'}), (prod_l:Product {id:'PROD_LOGISTICS'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (melsta)-[:OWNS      {pct:0.5104, as_of:date('2024-03-31')}]->(asplc)
MERGE (p_dhsj)-[:DIRECTOR_OF {role:'Executive Chairman',                  as_of:date('2024-03-31')}]->(asplc)
MERGE (p_jmsj)-[:DIRECTOR_OF {role:'Deputy Chairman & Managing Director', as_of:date('2024-03-31')}]->(asplc)
MERGE (p_dstj)-[:DIRECTOR_OF {role:'Executive Director',                  as_of:date('2024-03-31')}]->(asplc)
MERGE (asplc)-[:IN_SECTOR      ]->(sec)
MERGE (asplc)-[:OFFERS         ]->(prod_t)
MERGE (asplc)-[:OFFERS         ]->(prod_l)
MERGE (asplc)-[:HAS_METRIC     {year:2024, value:81770000000}]->(rev)
MERGE (asplc)-[:HAS_METRIC     {year:2024, value:15220000000}]->(np)
MERGE (asplc)-[:AUDITED_BY     {year:2024}                   ]->(kpmg);


// === 13. Alliance Finance Company PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_AFC',        name:'Alliance Finance Company PLC', founded_on:date('1956-07-18'), listed_on:'CSE'});
MERGE (:Company {id:'C_EY',         name:'Ernst & Young'});
MERGE (:Person {id:'P_SRT',         name:'Mr. S.R. Thambiayah'});
MERGE (:Person {id:'P_RCE',         name:'Mr. R.C. Ebell'});
MERGE (:Sector {id:'S_FIN_SERVICES', name:'Financial Services'});
MERGE (:Product {id:'PROD_FIN_LEASING', name:'Finance Leasing'});
MERGE (:Product {id:'PROD_GOLDLOAN',    name:'Gold Loan'});
MERGE (:Metric {id:'M_REVENUE', name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (afc:Company {id:'C_AFC'}), (ey:Company {id:'C_EY'}),
  (p_srt:Person {id:'P_SRT'}), (p_rce:Person {id:'P_RCE'}),
  (sec:Sector {id:'S_FIN_SERVICES'}), (prod_l:Product {id:'PROD_FIN_LEASING'}), (prod_g:Product {id:'PROD_GOLDLOAN'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (p_srt)-[:DIRECTOR_OF   {role:'Non-Executive Chairman',                 as_of:date('2024-03-31')}]->(afc)
MERGE (p_rce)-[:DIRECTOR_OF   {role:'Deputy Chairman & Managing Director',   as_of:date('2024-03-31')}]->(afc)
MERGE (p_srt)-[:OWNS_SHARES   {pct:0.1015,                                      as_of:date('2024-03-31')}]->(afc)
MERGE (afc)-[:IN_SECTOR       ]->(sec)
MERGE (afc)-[:OFFERS          ]->(prod_l)
MERGE (afc)-[:OFFERS          ]->(prod_g)
MERGE (afc)-[:HAS_METRIC      {year:2024, value:9675540000}]->(rev)
MERGE (afc)-[:HAS_METRIC      {year:2024, value:1139321000}]->(np)
MERGE (afc)-[:AUDITED_BY      {year:2024}                   ]->(ey);


// === 14. Alpha Fire Services PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_ALPHAFire', name:'Alpha Fire Services PLC', founded_on:date('2011-12-01')});
MERGE (:Company {id:'C_RICHARDSON', name:'Richardson Holdings (Pvt) Limited'});
MERGE (:Company {id:'C_EY',         name:'Ernst & Young'});
MERGE (:Person {id:'P_JASAP',       name:'Mr. J. A. S. A. Perera'});
MERGE (:Person {id:'P_VASP',        name:'Mr. V. A. S. Perera'});
MERGE (:Person {id:'P_NCAMC',       name:'Mr. N. C. A. M. Cooray'});
MERGE (:Sector {id:'S_FIRESAFE',    name:'Fire Protection and Detection'});
MERGE (:Product {id:'PROD_FIRESAFE',name:'Fire Protection and Detection Solutions'});
MERGE (:Metric {id:'M_REVENUE',  name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT',name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (alpha:Company {id:'C_ALPHAFire'}), (richardson:Company {id:'C_RICHARDSON'}), (ey:Company {id:'C_EY'}),
  (p_jasa:Person {id:'P_JASAP'}), (p_vas:Person {id:'P_VASP'}), (p_ncamc:Person {id:'P_NCAMC'}),
  (sec:Sector {id:'S_FIRESAFE'}), (prod:Product {id:'PROD_FIRESAFE'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (richardson)-[:OWNS     {pct:0.6750,            as_of:date('2024-03-31')}]->(alpha)
MERGE (p_jasa)-[:DIRECTOR_OF  {role:'Non-Executive Chairman',      as_of:date('2024-03-31')}]->(alpha)
MERGE (p_vas)-[:DIRECTOR_OF   {role:'Managing Director',            as_of:date('2024-03-31')}]->(alpha)
MERGE (p_ncamc)-[:DIRECTOR_OF {role:'Non-Executive Director',       as_of:date('2024-03-31')}]->(alpha)
MERGE (alpha)-[:IN_SECTOR      ]->(sec)
MERGE (alpha)-[:OFFERS         ]->(prod)
MERGE (alpha)-[:HAS_METRIC     {year:2024, value:125502408}]->(rev)
MERGE (alpha)-[:HAS_METRIC     {year:2024, value:10729311} ]->(np)
MERGE (alpha)-[:AUDITED_BY     {year:2024}                 ]->(ey);


// === 15. Alumex PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_ALUMEX', name:'Alumex PLC', founded_on:date('1986-03-16'), listed_on:'CSE'});
MERGE (:Company {id:'C_HAYLEYS', name:'Hayleys PLC'});
MERGE (:Company {id:'C_EY',      name:'Ernst & Young'});
MERGE (:Person {id:'P_KDDP',     name:'Mr. K. D. D. Perera'});
MERGE (:Person {id:'P_PMVB',     name:'Mr. P. M. V. B. K. T. B. Alakolange'});
MERGE (:Person {id:'P_AMP',      name:'Mr. A. M. Pandithage'});
MERGE (:Sector {id:'S_ALUMINIUM', name:'Aluminium Extrusions'});
MERGE (:Product {id:'PROD_ALUMINIUM', name:'Aluminium Extrusions'});
MERGE (:Metric {id:'M_REVENUE',    name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (alumex:Company {id:'C_ALUMEX'}), (hayleys:Company {id:'C_HAYLEYS'}), (ey:Company {id:'C_EY'}),
  (p_kdd:Person {id:'P_KDDP'}), (p_pmv:Person {id:'P_PMVB'}), (p_amp:Person {id:'P_AMP'}),
  (sec:Sector {id:'S_ALUMINIUM'}), (prod:Product {id:'PROD_ALUMINIUM'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (hayleys)-[:OWNS         {pct:0.5101, as_of:date('2024-03-31')}]->(alumex)
MERGE (p_kdd)-[:DIRECTOR_OF     {role:'Chairman & Chief Executive', as_of:date('2024-03-31')}]->(alumex)
MERGE (p_pmv)-[:DIRECTOR_OF     {role:'Managing Director',           as_of:date('2024-03-31')}]->(alumex)
MERGE (p_amp)-[:DIRECTOR_OF     {role:'Non-Executive Director',     as_of:date('2024-03-31')}]->(alumex)
MERGE (alumex)-[:IN_SECTOR       ]->(sec)
MERGE (alumex)-[:OFFERS          ]->(prod)
MERGE (alumex)-[:HAS_METRIC      {year:2024, value:9678610000}]->(rev)
MERGE (alumex)-[:HAS_METRIC      {year:2024, value:102683000} ]->(np)
MERGE (alumex)-[:AUDITED_BY      {year:2024}                   ]->(ey);


// === 16. Amana Bank PLC (FY 2023) ===
// -- Nodes
MERGE (:Company {id:'C_AMANABANK', name:'Amana Bank PLC', founded_on:date('2009-02-04'), listed_on:'CSE'});
MERGE (:Company {id:'C_IBGF',     name:'IB Growth Fund (Labuan) LLP'});
MERGE (:Company {id:'C_ISDB',     name:'Islamic Development Bank'});
MERGE (:Company {id:'C_EY',       name:'Ernst & Young'});
MERGE (:Person {id:'P_AA',        name:'Mr. Asgi Akbarally'});
MERGE (:Person {id:'P_MHSMF',     name:'Mr. M. H. S. M. Fairoz'});
MERGE (:Sector {id:'S_BANKING',   name:'Banking'});
MERGE (:Product {id:'PROD_SHARIA_BANK', name:'Sharia-Compliant Banking Services'});
MERGE (:Metric {id:'M_REVENUE',    name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (amana:Company {id:'C_AMANABANK'}), (ibgf:Company {id:'C_IBGF'}), (isdb:Company {id:'C_ISDB'}), (ey:Company {id:'C_EY'}),
  (p_aa:Person {id:'P_AA'}), (p_mhsmf:Person {id:'P_MHSMF'}),
  (sec:Sector {id:'S_BANKING'}), (prod:Product {id:'PROD_SHARIA_BANK'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (ibgf)-[:OWNS      {pct:0.2000, as_of:date('2023-12-31')}]->(amana)
MERGE (isdb)-[:OWNS      {pct:0.0848, as_of:date('2023-12-31')}]->(amana)
MERGE (p_aa)-[:DIRECTOR_OF  {role:'Non-Executive Chairman',                as_of:date('2023-12-31')}]->(amana)
MERGE (p_mhsmf)-[:HOLDS_POSITION{title:'Managing Director/CEO',               as_of:date('2023-12-31')}]->(amana)
MERGE (amana)-[:IN_SECTOR     ]->(sec)
MERGE (amana)-[:OFFERS        ]->(prod)
MERGE (amana)-[:HAS_METRIC    {year:2023, value:19891895000}]->(rev)
MERGE (amana)-[:HAS_METRIC    {year:2023, value:1732306000 }]->(np)
MERGE (amana)-[:AUDITED_BY    {year:2023}                   ]->(ey);


// === 17. Amana Takaful Life PLC (FY 2023) ===
// -- Nodes
MERGE (:Company {id:'C_ATLIFE', name:'Amana Takaful Life PLC', founded_on:date('2017-08-04'), listed_on:'CSE'});
MERGE (:Company {id:'C_ATPLC', name:'Amana Takaful PLC'});
MERGE (:Company {id:'C_EY',    name:'Ernst & Young'});
MERGE (:Person {id:'P_EDW',    name:'Mr. E. D. Wickramasuriya'});
MERGE (:Person {id:'P_MGRCC',  name:'Mr. M. G. R. Casie Chitty'});
MERGE (:Person {id:'P_MHSMF',  name:'Mr. M. H. S. M. Fairoz'});
MERGE (:Sector {id:'S_INSURANCE', name:'Insurance'});
MERGE (:Product {id:'PROD_LIFE_INS', name:'Life Insurance (Takaful)'});
MERGE (:Metric {id:'M_REVENUE',    name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (atlife:Company {id:'C_ATLIFE'}), (atplc:Company {id:'C_ATPLC'}), (ey:Company {id:'C_EY'}),
  (p_edw:Person {id:'P_EDW'}), (p_mgrcc:Person {id:'P_MGRCC'}), (p_mhsmf:Person {id:'P_MHSMF'}),
  (sec:Sector {id:'S_INSURANCE'}), (prod:Product {id:'PROD_LIFE_INS'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (atplc)-[:OWNS       {pct:0.6215, as_of:date('2023-12-31')}]->(atlife)
MERGE (p_edw)-[:DIRECTOR_OF  {role:'Independent Non-Executive Chairman', as_of:date('2023-12-31')}]->(atlife)
MERGE (p_mgrcc)-[:HOLDS_POSITION{title:'Managing Director/CEO',           as_of:date('2023-12-31')}]->(atlife)
MERGE (p_mhsmf)-[:DIRECTOR_OF  {role:'Non-Executive Director',           as_of:date('2023-12-31')}]->(atlife)
MERGE (atlife)-[:IN_SECTOR     ]->(sec)
MERGE (atlife)-[:OFFERS        ]->(prod)
MERGE (atlife)-[:HAS_METRIC    {year:2023, value:2492019103}]->(rev)
MERGE (atlife)-[:HAS_METRIC    {year:2023, value:253300560 }]->(np)
MERGE (atlife)-[:AUDITED_BY    {year:2023}                   ]->(ey);


// === 18. Amana Takaful PLC (FY 2023) ===
// -- Nodes
MERGE (:Company {id:'C_ATPLC', name:'Amana Takaful PLC', founded_on:date('1998-12-31'), listed_on:'CSE'});
MERGE (:Company {id:'C_EY',    name:'Ernst & Young'});
MERGE (:Person {id:'P_EDW',    name:'Mr. E. D. Wickramasuriya'});
MERGE (:Person {id:'P_MGRCC',  name:'Mr. M. G. R. Casie Chitty'});
MERGE (:Person {id:'P_MHSMF',  name:'Mr. M. H. S. M. Fairoz'});
MERGE (:Sector {id:'S_INSURANCE', name:'Insurance'});
MERGE (:Product {id:'PROD_GEN_INS', name:'General Insurance (Takaful)'});
MERGE (:Metric {id:'M_REVENUE',    name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (atplc:Company {id:'C_ATPLC'}), (ey:Company {id:'C_EY'}),
  (p_edw:Person {id:'P_EDW'}), (p_mgrcc:Person {id:'P_MGRCC'}), (p_mhsmf:Person {id:'P_MHSMF'}),
  (sec:Sector {id:'S_INSURANCE'}), (prod:Product {id:'PROD_GEN_INS'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (p_edw)-[:DIRECTOR_OF  {role:'Independent Non-Executive Chairman', as_of:date('2023-12-31')}]->(atplc)
MERGE (p_mgrcc)-[:HOLDS_POSITION{title:'Managing Director/CEO',             as_of:date('2023-12-31')}]->(atplc)
MERGE (p_mhsmf)-[:DIRECTOR_OF  {role:'Non-Executive Director',             as_of:date('2023-12-31')}]->(atplc)
MERGE (atplc)-[:IN_SECTOR       ]->(sec)
MERGE (atplc)-[:OFFERS          ]->(prod)
MERGE (atplc)-[:HAS_METRIC      {year:2023, value:6666742000}]->(rev)
MERGE (atplc)-[:HAS_METRIC      {year:2023, value:170111000 }]->(np)
MERGE (atplc)-[:AUDITED_BY      {year:2023}                   ]->(ey);


// === 19. Ambeon Capital PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_AMBEONCAP', name:'Ambeon Capital PLC', founded_on:date('1991-02-14'), listed_on:'CSE'});
MERGE (:Company {id:'C_AMBEONHOLD', name:'Ambeon Holdings PLC'});
MERGE (:Company {id:'C_EY',         name:'Ernst & Young'});
MERGE (:Person {id:'P_AGW',         name:'Mr. A.G. Weerasinghe'});
MERGE (:Person {id:'P_SABE',        name:'Dr. S.A.B. Ekanayake'});
MERGE (:Sector {id:'S_DIV_FIN',     name:'Diversified Financials'});
MERGE (:Product {id:'PROD_INV_HOLD', name:'Investment Holding'});
MERGE (:Metric {id:'M_REVENUE',     name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT',  name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (ambcap:Company {id:'C_AMBEONCAP'}), (ambhold:Company {id:'C_AMBEONHOLD'}), (ey:Company {id:'C_EY'}),
  (p_agw:Person {id:'P_AGW'}), (p_sabe:Person {id:'P_SABE'}),
  (sec:Sector {id:'S_DIV_FIN'}), (prod:Product {id:'PROD_INV_HOLD'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (ambhold)-[:OWNS          {pct:0.9010, as_of:date('2024-03-31')}]->(ambcap)
MERGE (p_agw)-[:DIRECTOR_OF     {role:'Non-Executive Chairman',          as_of:date('2024-03-31')}]->(ambcap)
MERGE (p_sabe)-[:DIRECTOR_OF    {role:'Group Managing Director/CEO',     as_of:date('2024-03-31')}]->(ambcap)
MERGE (ambcap)-[:IN_SECTOR       ]->(sec)
MERGE (ambcap)-[:OFFERS          ]->(prod)
MERGE (ambcap)-[:HAS_METRIC      {year:2024, value:102683000} ]->(rev)
MERGE (ambcap)-[:HAS_METRIC      {year:2024, value:-30735000} ]->(np)
MERGE (ambcap)-[:AUDITED_BY      {year:2024}                   ]->(ey);


// === 20. Ambeon Holdings PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_AMBEONHOLD', name:'Ambeon Holdings PLC', founded_on:date('1971-09-15'), listed_on:'CSE'});
MERGE (:Company {id:'C_EY',          name:'Ernst & Young'});
MERGE (:Person {id:'P_AGW',          name:'Mr. A.G. Weerasinghe'});
MERGE (:Person {id:'P_SABE',         name:'Dr. S.A.B. Ekanayake'});
MERGE (:Sector {id:'S_DIVERSIFIED',  name:'Diversified Holdings'});
MERGE (:Product {id:'PROD_PORCELAIN',name:'Porcelain'});
MERGE (:Product {id:'PROD_IT_SVC',   name:'IT Services'});
MERGE (:Metric {id:'M_REVENUE',      name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT',   name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (ambhold:Company {id:'C_AMBEONHOLD'}), (ey:Company {id:'C_EY'}),
  (p_agw:Person {id:'P_AGW'}), (p_sabe:Person {id:'P_SABE'}),
  (sec:Sector {id:'S_DIVERSIFIED'}), (prod_p:Product {id:'PROD_PORCELAIN'}), (prod_it:Product {id:'PROD_IT_SVC'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (p_agw)-[:DIRECTOR_OF  {role:'Non-Executive Chairman',          as_of:date('2024-03-31')}]->(ambhold)
MERGE (p_sabe)-[:DIRECTOR_OF {role:'Group Managing Director/CEO',     as_of:date('2024-03-31')}]->(ambhold)
MERGE (ambhold)-[:IN_SECTOR   ]->(sec)
MERGE (ambhold)-[:OFFERS      ]->(prod_p)
MERGE (ambhold)-[:OFFERS      ]->(prod_it)
MERGE (ambhold)-[:HAS_METRIC  {year:2024, value:17618298000}]->(rev)
MERGE (ambhold)-[:HAS_METRIC  {year:2024, value:1223607000} ]->(np)
MERGE (ambhold)-[:AUDITED_BY  {year:2024}                   ]->(ey);


// === 21. AMW Capital Leasing and Finance PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_AMWCLF', name:'AMW Capital Leasing and Finance PLC', founded_on:date('2006-12-14')});
MERGE (:Company {id:'C_AMW',     name:'Associated Motorways (Private) Limited'});
MERGE (:Company {id:'C_ALFUTTAIM', name:'Al-Futtaim Group', region:'UAE'});
MERGE (:Company {id:'C_KPMG',    name:'KPMG'});
MERGE (:Person {id:'P_PABNSW',   name:'Mr. P. A. B. N. S. Wijeyeratne'});
MERGE (:Person {id:'P_WCAMP',    name:'Mr. W. C. A. Manes Perera'});
MERGE (:Sector {id:'S_FIN_SERVICES', name:'Financial Services'});
MERGE (:Metric {id:'M_REVENUE',   name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT',name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (amwclf:Company {id:'C_AMWCLF'}), (amw:Company {id:'C_AMW'}), (alfuttaim:Company {id:'C_ALFUTTAIM'}), (kpmg:Company {id:'C_KPMG'}),
  (p_pabnsw:Person {id:'P_PABNSW'}), (p_wcamp:Person {id:'P_WCAMP'}),
  (sec:Sector {id:'S_FIN_SERVICES'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (amw)-[:OWNS      {pct:0.9000, as_of:date('2024-03-31')}]->(amwclf)
MERGE (alfuttaim)-[:OWNS {description:'Ultimate Parent Company'}]->(amw)
MERGE (p_pabnsw)-[:DIRECTOR_OF {role:'Non-Executive Chairman', as_of:date('2024-03-31')}]->(amwclf)
MERGE (p_wcamp)-[:DIRECTOR_OF  {role:'Director/CEO',            as_of:date('2024-03-31')}]->(amwclf)
MERGE (amwclf)-[:IN_SECTOR       ]->(sec)
MERGE (amwclf)-[:HAS_METRIC      {year:2024, value:2610612464}]->(rev)
MERGE (amwclf)-[:HAS_METRIC      {year:2024, value:330736549 }]->(np)
MERGE (amwclf)-[:AUDITED_BY      {year:2024}                   ]->(kpmg);


// === 22. Anilana Hotels and Properties PLC (FY 2024) ===
// -- Nodes
MERGE (:Company {id:'C_ANILANA', name:'Anilana Hotels and Properties PLC', founded_on:date('2010-02-23'), listed_on:'CSE'});
MERGE (:Company {id:'C_EY',      name:'Ernst & Young'});
MERGE (:Person {id:'P_GAUG',     name:'Mr. G. A. U. A. Goonesekere'});
MERGE (:Sector {id:'S_HOTELS',   name:'Hotels and Travels'});
MERGE (:Product {id:'PROD_HOTEL', name:'Hoteliering'});
MERGE (:Metric {id:'M_REVENUE',    name:'Revenue', unit:'LKR'});
MERGE (:Metric {id:'M_NET_PROFIT', name:'Net Profit', unit:'LKR'});

// -- Relationships
MATCH
  (anilana:Company {id:'C_ANILANA'}), (ey:Company {id:'C_EY'}),
  (p_gaug:Person {id:'P_GAUG'}),
  (sec:Sector {id:'S_HOTELS'}), (prod:Product {id:'PROD_HOTEL'}),
  (rev:Metric {id:'M_REVENUE'}), (np:Metric {id:'M_NET_PROFIT'})
MERGE (p_gaug)-[:DIRECTOR_OF  {role:'Chairman/Managing Director', as_of:date('2024-03-31')}]->(anilana)
MERGE (p_gaug)-[:OWNS_SHARES  {pct:0.5641,                      as_of:date('2024-03-31')}]->(anilana)
MERGE (anilana)-[:IN_SECTOR     ]->(sec)
MERGE (anilana)-[:OFFERS        ]->(prod)
MERGE (anilana)-[:HAS_METRIC    {year:2024, value:508443622} ]->(rev)
MERGE (anilana)-[:HAS_METRIC    {year:2024, value:-1061908095}]->(np)
MERGE (anilana)-[:AUDITED_BY    {year:2024}                   ]->(ey);
