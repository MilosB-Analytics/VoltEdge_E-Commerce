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
      <h3 align="center">Total Revenue Analysis (2019–2022)</h3>
      <div align="center">
        <img width="100%" height="400px" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Total%20Sales%20v3.png" />
      </div>
      <br>
      <td width="460" valign="top">
        <ol>
          <li>
            <strong>Revenue Performance & Peak Sales</strong>
            <ul>
              <li>The strongest year by far was 2020 with a total of over <strong>$10.1M</strong>. As a result of the COVID-19 pandemic we can observe a steady quarterly revenue increase.</li>
              <li>The best performing period is Q4 2020 with a total of more than <strong>$1.25M</strong> in December.</li>
              <li>A meaningful drop in revenue occurs  in Q2 2021  after which  the sales trend remains steady approximately around <strong>$2.2M</strong> until the beginning  of 2022, this would be the breaking point where we can see a constant downward trend. </li>
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
              <li>The start of 2022 had above average sales with January($705), however the rest of 2022 had a continual decline in revenue with Q1 & Q2 maintaining relatively   close to the average. From Q3 onwards the revenue drastically dropped.</li>
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
<h2 align="center">Entity Relationship Diagram - ERD</h2>
<h4>The database structure as seen below consists of four tables(with additional views): orders, customers, geo_lookup, order_status, with a total row count of 108,127 records.</h4>
<div align="center">
  <img width="600"  src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/ERP%20Diagram.png">
</div>
<h1 align="center">Executive Dashboard</h1>
        <h4>A centralized sales intelligence dashboard designed to highlight performance trends, anomalies, and growth opportunities at a glance.</h4>
          <img  src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Dashboard%20v2.png">
<table align="center">
  <tr>
    <h1 align="center">Sales Trend</h1>
    <td width="1000">
      <img width="300" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Total%20Revenue%20v2.png">
    </td>
    <td width="1000">
      <img width="300" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/AOV%20v2.png">
    </td>
    <td width="1000">
      <img width="300" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Order%20Count%20v3.png">
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
        <li>Substantial  Growth Reduction Throughout 2022 – Indications of Weakened Demand<ul>
            <li>Overall Trend: Each quarter in 2022 exhibited a sequential decline in revenue.</li>
            <li>Q1: Opened relatively strong (January revenue of $704K) but underperformed compared to 2021 levels.</li>
            <li>Q2–Q3: Revenue declined further, falling below $500K per month and continuing downward through Q3, with August and September dropping below $400K.</li>
            <li>Q4: Reached a historical low, signaling significant demand contraction and potential challenges related to customer retention, pricing strategy, or product-market fit. VoltEdge should consider adapting the company's marketing strategy</li>
          </ul>
        </li>
      </ol>
      <strong>Average Order Value (AOV)</strong>
      <ol>
        <li> Pandemic-Era AOV Surge (2020):<ul>
            <li>
              Average order value increased sharply during the pandemic, <strong>peaking at $322 in October 2020</strong>, compared to $246 in November 2019, reflecting a shift toward higher-value online purchases.
            </li>
            <li>Post-Pandemic Normalization (2021–2022): Following the 2020 peak, AOV declined steadily, with 2022 levels ($234–$237) returning close to pre-pandemic benchmarks.</li>
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
<table align="center">
  <tr>
     <h1 align="center">Product Performance</h1>
      <div align="center">
        <h3>Spike in Product Sales Occurred in 2020 however it was not Sustained at High Levels</h3>
        <img src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Product%20Perfomance.png" />
      </div>
    <tr>
  </tr>
</table>
<table aign="center">
  <tr>
      <td width="500" valign="top">
      <h3>High and Low Performers</h3>
      <ul>
        <li>Top Revenue Contributor: The 27-inch 4K Gaming Monitor consistently delivered strong year-over-year performance, generating <strong>$9.85M</strong> in total revenue, making it the highest-grossing product.</li>
        <li>Secondary High Performers: The Apple AirPods Headphones <strong>($7.74M)</strong> and MacBook Air Laptop <strong>($6.30M)</strong> ranked second and third, respectively, reflecting sustained demand for premium consumer electronics.</li>
        <li>Underperforming Products: Bose SoundSport Headphones generated <strong>$3.3K</strong> in total revenue and recorded no sales in multiple months, indicating either extremely limited demand, availability constraints, or potential data-quality or product lifecycle issues.</li>
        <li>Unexpected Low Performer: Despite typically strong market demand, the Apple iPhone ranked among the lowest revenue contributors, with <strong>$213K</strong> in total sales, suggesting possible pricing, availability, or channel-specific constraints. </li>
      </ul>
      </td>
  <td width="500" valign="top">
      <h3>AOV Lifecycle</h3>
      <ul>
        <li>Peak and Decline: AOV peaked in 2020 at $300.09, followed by a decline in 2021 ($254.56) and 2022 ($229.89), aligning with post-pandemic normalization trends.</li>
        <li>High-Value Product Drivers: The MacBook Air Laptop ($1,591), ThinkPad Laptop ($1,101), and Apple iPhone ($741) contribute most significantly to AOV due to their higher price points. </li>
        <li>Low-Value, High-Stability Products: Items such as the Samsung Charging Cable Pack ($20.20) and Samsung Webcam ($50.43) exhibit stable sales but have minimal impact on overall AOV due to their low average prices.</li>
        <li>Underlying AOV Trend: While AOV is trending downward, the decline appears to be driven primarily by reduced contribution from higher-priced products, rather than broad pricing changes across the product portfolio.</li>
      </ul>
      </td>
    
</tr>
</table>
<table align="center">
    <tr align="center">
      <td width="1000" valign="top">
      <h3>Average Order Value Trends (2019-2022)</h3>
      <img width="450" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Product%20Yearly.png">
    </td>
    <td width="1000">
      <h3>Sales Funnel by Product</h3>
      <img width="450" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Sales%20Funnel.png">
    </td>
  </tr>
</table>
</table>

<table align="center">
  <tr>
    <h1 align="center">Loyalty Program Learnings</h1>
    <table align="center">
    <tr align="center">
      <td width="1000">
      <h3>Average Order Value by Loyalty Status</h3>
      <img width="430" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Loyalty%20AOV%20v2.png">
    </td>
    <td width="1000">
      <h3>Number of Orders by Loyalty Status</h3>
      <img width="450" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Loyalty%20Order%20Count%20v2.png">
    </td>
  </tr>
</table>
    <table>
      <tr>
        <td>
          <ul>
            <li><strong>Sustained Performance Among Loyalty Members:</strong> Loyalty members maintained strong performance beyond the pandemic surge, with sales revenue increasing from $0.4M in 2019 to $2.7M in 2022 and an AOV growth rate of 18% over the same period. Loyalty members continued purchasing higher-priced products and placing more frequent orders post-pandemic, up until August 2022.</li>
            <br>
            <li><strong>Declining Performance Among Non-Loyalty Members:</strong> In contrast, non-loyalty members failed to sustain growth beyond the pandemic period. Sales revenue declined from $3.4M in 2019 to $2.2M in 2022, accompanied by an 8% decrease in AOV.</li>
            <br>
            <li><strong>2022 Spending Gap:</strong> In 2022, loyalty members spent nearly $31 more per order on average than non-loyalty members ($245 vs. $214). Loyalty-member AOV increased modestly year over year (+1.1% vs. 2021), while non-loyalty member AOV declined sharply (–18.7%).</li>
            <li>Order Behavior Differences: Loyalty members outspent non-loyalty members on returning orders by nearly $60, while non-loyalty members historically spent more on their first VoltEdge orders.</li>
          </ul>
        </td>
      </tr>
    </table>
  </tr>
</table>
<table align="center">
  <h1 align="center">Refund Rates</h1>
  <tr>
    <td width="500">
       <div valign="top" align="center">
      <h3>Refund Rate per Product Type</h3>
      <img alt="Refund heat map of products" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Yearly%20Refund%20Rate%20by%20Product.png" />
    </div>
    </td>
    <td valign="top" width="500">
      <ul>
        <li>Laptops have the lowest retention rate, with the highest return rate year over year being the ThinkPad Laptop, followed by the MacBook Air Laptop.</li>
        <li>Coincidentally, these two items have the highest AOV and are VoltEdge's most expensive products.</li>
        <li>The least returned product is the Bose SoundSport Headphones, with a return rate of 0%, followed by the Samsung Charging Cable Pack, with an average return rate of 2%.</li>
        <li>However, the Bose SoundSport Headphones are the least frequently purchased product, and the Samsung Charging Cable Pack ranks in the bottom half of purchase orders.</li>
        <li>For 2022, there were no recorded returns for any product.</li>
      </ul>
    </td>
  </tr>
</table>
<table align="center">
  <h1 align="center">Regional Performance</h1>
      <div align="center">
        <img width="1000" alt="Sales by region" src="https://github.com/MilosB-Analytics/MilosB-Analytics/blob/main/Images/VoltEdge/Regional%20Performance.png" />
      </div>
  <tr valign="top">
     <td width="900">
      <ul>
        <li>North America as the Primary Revenue Driver:</li>
          <ul>
            <li>North America is the strongest performing region across VoltEdge’s product portfolio, contributing an average of 52% of total sales per product, with $2.7M in revenue in 2022.</li>
          </ul>
        <li>Underperformance in Latin America:</li>
          <ul>
            <li>In contrast, the Latin American region underperforms significantly, with each product contributing an average of only 6% of total sales, totaling approximately $256K in 2022.</li>
          </ul>
        <li>Product-Level Regional Concentration:</li>
          <ul>
            <li>The Samsung Webcam achieves its highest sales concentration in North America, where 58% of its total sales are generated.</li>
          </ul>
        <li>Top Product Across Regions:</li>
          <ul>
            <li>The 27-inch 4K Gaming Monitor is the most popular product overall, accounting for 35% of total product sales across regions.</li>
          </ul>
        <li>Lowest Performing Product:</li>
          <ul>
            <li>The Bose SoundSport Headphones remain the weakest performer, with sales contributing close to 0% across regions, indicating minimal demand or potential product lifecycle issues.</li>
          </ul>
      </ul>
    </td>
  </tr>
</table>

<table align="center">
    <h1>Recommended Next Steps</h1>
    <h4>Below are actionable items recommended for VoltEdge based on findings from this project analysis.</h4>
      <ul>
        <h3>Sales Performance: </h3>
        <li><strong>Mitigate Seasonal Sales Drops:</strong> Strengthen marketing and promotional efforts during historically weak periods (January and February) to counter recurring seasonal declines. January and February have averaged –12% and –23% year-over-year                    sales growth, respectively.</li>
        <li><strong>Rebuild Post-Pandemic Demand:</strong> Implement targeted reactivation campaigns for returning customers to address sustained post-pandemic softness. Average year-over-year sales growth has declined by –28%, alongside a –17% drop in order volume,                  indicating demand-side weakness rather than pricing issues.</li>
        <li><strong>Reassess Q4 Strategy: </strong>Post-pandemic Q4 performance has averaged –17% year-over-year growth, suggesting the need to reevaluate holiday promotions, campaign timing, and offer effectiveness.</li>
      <h3>Product Strategy</h3>
        <li><strong>Prioritize High-Performing Products:</strong> Optimize inventory and promotional focus around consistently strong products such as the 27-inch 4K Gaming Monitor (nearly $10M in sales over four years) and Apple AirPods (approximately $8M over the same period). </li>
        <li><strong>Deprioritize Low-Performing SKUs:</strong> Reduce inventory exposure and reassess the role of underperforming products such as Bose SoundSport Headphones and Apple iPhone, which account for negligible purchase volume.</li>
        <li><strong>Investigate Product Mix Imbalance:</strong> While MacBook Air Laptops rank third in total revenue (22% of sales), they represent only 3.7% of total orders, indicating high price points, potential accessibility barriers, or demand constraints.</li>
        <h3>Loyalty Program</h3>
        <li><strong>Expand Loyalty Program Investment:</strong> Continue prioritizing the loyalty program as a stabilizing revenue lever. Loyalty members demonstrated 18% AOV growth from 2019 to 2022 and spent an average of $31 more per order than non-loyalty members in 2022.</li>
        <li><strong>Target High-Value Products Through Loyalty:</strong> Introduce loyalty-exclusive incentives for MacBook Air Laptops, as loyalty members align closely with the ideal customer profile—higher spenders, repeat purchasers, and lower return rates.</li>
        <h3>Refund Rates & Product Quality</h3>
        <li><strong>Improve Quality Controls for High-AOV Products:</strong> Strengthen quality assurance and post-purchase support for high-value products, which exhibit higher return rates. MacBook Air and ThinkPad Laptops both averaged 14% return rates between 2019 and 2021.</li>
        <li><strong>Reduce Return-Driven Revenue Leakage:</strong> Addressing returns on premium products presents a direct opportunity to protect revenue and improve customer satisfaction without increasing acquisition costs.</li>
        <h3>Regional Strategy</h3>
        <li><strong>Defend Core Market Strength:</strong> Continue maximizing market share in North America, which accounts for 52% of total product sales, through sustained investment in high-performing products and channels.</li>
        <li><strong>Accelerate Growth in Underperforming Regions:</strong> Expand localized offerings, partnerships, and distribution strategies in Latin America, where products currently account for only 6% of total sales, indicating untapped demand rather than market saturation.</li>
        <li><strong>Align Regional Assortment With Demand:</strong> Maintain focus on high-demand products such as the 27-inch 4K Gaming Monitor and Apple AirPods, which consistently outperform across regions.</li>
      </ul>
</table>
