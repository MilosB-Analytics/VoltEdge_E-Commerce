<div align="center">
  <img width="520px" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/VoltEdge-Logo.png" />
</div>
<h1 align="center">Ecommerce Performance Report</h1>
<table align="center">
  <tr>
    <td width="1440">
      <h2 align="center">Company Overview</h2>
      <body>
        <strong>VoltEdge</strong> is a U.S.-based e-commerce company operating in the global consumer electronics market. Founded in early 2018, the company has experienced rapid growth and expansion, reaching a broad international customer base while competing in an increasingly saturated and price-competitive industry. Like many e-commerce businesses, <strong>VoltEdge</strong> faced both operational challenges and growth opportunities during the COVID-19 period. <br>
        <br>
       The company serves over <strong>85,000</strong> customers and has processed approximately <strong>108,000</strong> transactions, generating more than <strong>$28 million</strong> in total revenue. <strong>VoltEdge’s</strong> product portfolio consists exclusively of consumer electronics sold through its online platform.
        <br>
        <br>This analysis was commissioned by the Head of Operations to evaluate  <strong>VoltEdge’s</strong> commercial performance from 2019 to 2022. The objective is to assess historical trends, identify performance drivers, and uncover opportunities for operational and revenue optimization. Insights from this analysis are intended to support data-driven decision-making across cross-functional teams, including operations, marketing, and customer engagement.
      <h3>Key Focus Areas</h3>
      <h4>
        <ul><li>Sales Trends: Analysis of revenue growth, order volume, and average order value (AOV) to identify primary sales drivers.</li>
          <li>Product Performance: Evaluation of product-level performance, category contribution, and refund rates to inform strategic product decisions.</li>
          <li>Loyalty Program: Assessment of loyalty program adoption and effectiveness, with recommendations to improve customer retention and engagement.</li>
          <li>Regional Performance: Examination of sales and product performance by region to highlight geographic growth opportunities and operational gaps.</li>
        </ul>
      </h4>
    </td>
  </tr>
</table>
<table align="center">
  <tr>
    <div width="920">
      <h1 align="center">Executive Summary</h1>
      <h3 align="center">Total Revenye Analysis (2019–2022)</h3>
      <div align="center">
        <img width="100%" height="400px" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Total%20Sales.png" />
      </div>
      <br>
      <td width="460" valign="top">
        <ol>
          <li>
            <strong>Revenue Performance & Peak Sales</strong>
            <ul>
              <li>The strongest year by far was 2020 with a total of over <strong>$10.1M</strong>. As a result of the COVID-19 pandemic we can observe a steady quarterly revenue increase.</li>
              <li>The best performing period is Q4 2020 with a total of more than <strong>$1.25M</strong> in December.</li>
              <li>A meaningful drop in revenue occurrs in Q2 2021 afterwhich the sales trend remains steady approximately around <strong>$2.2M</strong> until the beggining of 2022, this would be the breaking point where we can see a constant downward trend. </li>
            </ul>
          </li>
          <li>
            <strong>Revenue Break Point: Declining Trend 2022</strong>
            <ul>
              <li>Q4 of 2022 takes heavy turn as sales reached their overall lowest points, with October<strong>($178K)</strong>, November<strong>($208K)</strong> and December<strong>($262K)</strong> significantly generating less revenue than previous years.</li>
              <li>Revenue declined sharply toward the end of Q3 2022 and throughout Q4, indicating a break from historical seasonal performance. This deviation suggests the impact of internal operational changes, shifts in customer demand, and broader market conditions, warranting deeper investigation to isolate primary drivers. </li>
            </ul>
          </li>
        </ol>
      </td>
      <td width="460" valign="top">
        <ol start="3">
          <li>
            <strong>Quarterly Trends & Insights</strong>
            <ul>
              <li>Historical performance shows that Q3 and Q4 consistently outperform other quarters, aligning with seasonal consumer demand and intensified marketing activity. During these peak periods, marketing channel utilization shifts notably, with Affiliate traffic emerging as the top contributor (26.6%), followed closely by Direct traffic (25.6%).</li>
              <li>The start of 2022 had above average sales with January($705), however the rest of 2022 had a continual decline in revenue with Q1 & Q2 maintaining relatevly close to the average. From Q3 onwards the revenue drastically droped.</li>
            </ul>
          </li>
          <li>
            <strong>Key Points: Next Steps</strong>
            <ul>
              <li>Analyze the drivers behind the 2022 performance decline, including shifts in market demand, competitive pressure, and internal operational factors.</li>
              <li>Identify and replicate patterns from historically strong performance periods, particularly high-performing Q3 and Q4 cycles, to optimize marketing timing & promotional effectiveness.</li>
              <li>Reevaluate the 2023 commercial strategy with a focus on pricing structure, promotional design, and customer engagement initiatives to stabilize performance and restore growth momentum.</li>
            </ul>
          </li>
        </ol>
      </td>
    </div>
  </tr>
</table>
<h2 align="center">Entitiy Relationship Diagram - ERD</h2>
<body>The database structure as seen below consists of four tables(with additional views): orders, customers, geo_lookup, order_status, with a total row count of 108,127 records.</body>
<div align="center">
  <img  src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/ERP%20Diagram.png">
</div>
<h1 align="center">Complete Analysis</h1>
<table align="center">
  <tr>
    <h1 align="center">Sales Trend</h1>
    <td width="1000">
      <img width="300" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Total%20Revenue1.png">
    </td>
    <td width="1000">
      <img width="300" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/AOV1.png">
    </td>
    <td width="1000">
      <img width="300" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Order%20Count1.png">
    </td>
  </tr>
</table>
<table>
  <tr>
    <td>
      <strong>Sales Revenue</strong>
      <ol>
        <li>Significant Q4 2022 Decline – A Major Deviation from Seasonal Trends<ul>
            <li>Historically, Q4 (October–December) has been VoltEdge’s strongest revenue period, driven by holiday shopping events such as Black Friday, Cyber Monday, and end-of-year promotions. However, this seasonal pattern <strong>broke sharply in 2022</strong>, with Q4 revenue experiencing a substantial decline.</li>
            <li>December 2022 sales revenue totaled $262K, compared to $458K–$1.25M in prior years. This represents an approximate <strong>70–80% decrease</strong> versus Q4 2021, and an even more pronounced drop when compared to Q4 2020. </li>
          </ul>
        </li>
        <li>Sales Normalization: Post Pandemic (2020-2022 Trends) <ul>
            <li>2020 Sales Surge: Pandemic-driven shift to e-commerce resulted in accelerated growth, with Q2–Q4 2020 showing rapid increases. Notably, Q4 2020 revenue was nearly <strong>double</strong> that of Q4 2019. </li>
            <li>2021 Stabilization: Sales remained elevated but began to normalize, reflecting a gradual decline from peak pandemic demand rather than continued exponential growth.</li>
            <li>2022 Decline: A consistent reduction in sales across <strong>all quarters</strong> indicates a post-pandemic correction, likely influenced by inflationary pressures, reduced consumer spending, and increased market competition. </li>
          </ul>
        </li>
        <li>Substantional Growth Reduction Throughout 2022 – Indications of Weakened Demand<ul>
            <li>Overall Trend: Each quarter in 2022 exhibited a sequential decline in revenue.</li>
            <li>Q1: Opened relatively strong (January revenue of $704K) but underperformed compared to 2021 levels.</li>
            <li>Q2–Q3: Revenue declined further, falling below $500K per month and continuing downward through Q3, with August and September dropping below $400K.</li>
            <li>Q4: Reached a historical low, signaling significant demand contraction and potential challenges related to customer retention, pricing strategy, or product-market fit. VoltEdge should consider adapting the company's marketing stratergy.</li>
          </ul>
        </li>
      </ol>
      <strong>Average Order Value (AOV)</strong>
      <ol>
        <li> Pandemic-Era AOV Surge (2020):<ul>
            <li>
              Average order value increased sharply during the pandemic, <strong>peaking at $322 in October 2020</strong>, compared to $246 in November 2019, reflecting a shift toward higher-value online purchases.
            </li>
            <li>Post-Pandemic Normalization (2021–2022): Following the 2020 peak, AOV declined steadily, with 2022 levels ($234–$237) returning close to pre-pandemic benchmarks..</li>
          </ul>
        </li>
        <li>Increased Volatility in 2022: <ul>
            <li>
              AOV fluctuated more noticeably in 2022, ranging from $216 (October) to $256 (September), indicating less consistent customer spending behavior.
            </li>
            <li>Q4 2022 AOV was significantly lower than Q4 2020 and Q4 2021, suggesting reduced holiday spending per order compared to prior years.</li>
          </ul>
        </li>
        <li>Long-Term Trend Assessment: <ul>
            <li>From its 2020 peak, AOV declined by approximately 27% by 2022.</li>
            <li>Despite this drop, AOV growth remained relatively stable over the four-year period, indicating minimal changes in core pricing strategy.</li>
            <li>Given the relatively stable long-term AOV trend, AOV does not appear to be a primary driver of the 2022 revenue decline, pointing instead toward volume- or demand-related factors.</li>
          </ul>
        </li>
      </ol>
      <strong>Order Statistics</strong>
      <ol>
        <li>Revenue Decline Driven by Volume: Order counts closely track sales revenue trends, indicating that the 2022 revenue decline was driven primarily by a reduction in order volume rather than changes in average order value.</li>
        <li>Significant Year-over-Year Drop: Total orders decreased by approximately 38% from 2021 to 2022, representing a substantial contraction in customer purchasing activity. </li>
        <li>Mid-2022 Inflection Point: The downturn began in mid-2022, with monthly order volume falling from 2,034 orders in July to 825 orders by October, marking a sharp and sustained decline.</li>
        <li>Revenue Impact: While average spend per order declined modestly, the frequency of purchases was the dominant factor driving lower overall sales revenue.</li>
      </ol>
    </td>
  </tr>
</table>
