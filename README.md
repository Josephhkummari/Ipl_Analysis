# 🏏 IPL Analytics Dashboard (2008–2024)

### Has the IPL Become More Batting Friendly Over Time?

---

## 📌 Project Overview

This end-to-end data analytics project explores Indian Premier League (IPL) data from **2008 to 2024** to uncover long-term trends in batting, bowling, and team performance. The core research question driving the project was:

> **Has the IPL become more batting friendly over time?**

Using over **1,095 matches** and **260,000+ ball-by-ball deliveries**, the project combines **Python, PostgreSQL, SQL, Power BI, and DAX** to transform raw cricket data into a clean, interactive analytics dashboard with actionable insights.

---

## 🎯 Objectives

- Analyze IPL scoring trends across seasons
- Study the evolution of batting performance and strike rates
- Evaluate bowling effectiveness in high-scoring conditions
- Examine team dominance and winning patterns
- Investigate the impact of toss decisions on match outcomes

---

## 🛠️ Tech Stack

| Tool             | Purpose                          |
|------------------|-----------------------------------|
| Python (Pandas)  | Data cleaning & preprocessing     |
| PostgreSQL       | Data storage                      |
| SQL              | Views, aggregations & analytics   |
| Power BI         | Dashboard development             |
| DAX              | KPIs & measures                   |
| Git & GitHub     | Version control                   |

---

## 📊 Dataset Overview

**Source:** IPL Ball-by-Ball Dataset (2008–2024)

| Metric               | Value     |
|----------------------|-----------|
| Seasons Covered      | 17        |
| Total Matches        | 1,095     |
| Total Deliveries     | 260,920+  |
| Total Runs Scored    | 348,000+  |
| Total Wickets        | 13,000+   |
| Total Sixes          | 13,000+   |
| Total Fours          | 30,000+   |

---

## 📈 Dashboard Pages

### 1️⃣ Overview Dashboard
High-level IPL statistics, including total matches, runs, wickets, sixes, fours, top run scorers, top wicket takers, and a team performance summary.

### 2️⃣ Season Analysis
Tracks IPL's evolution over time through matches per season, runs per season, average team score, total sixes by season, and season highlights.

**Key Insight:** Average team scores increased significantly over IPL history, indicating a clear shift toward more aggressive batting.

### 3️⃣ Batting Analysis
Deep dive into batting performance — top run scorers, strike rate leaders, most sixes, most fours, and Orange Cap insights.

**Key Insight:** Recent IPL seasons show a sharp rise in six-hitting and high strike-rate batting.

### 4️⃣ Bowling Analysis
Focuses on bowling effectiveness — highest wicket takers, economy leaders, dot ball percentage, death over performance, and dismissal analysis.

**Key Insight:** Elite bowlers remain effective through economy control and dot-ball pressure, even as batting dominance increases.

### 5️⃣ Team Performance Analysis
Examines franchise success and strategy — most successful teams, running total wins, toss win conversion %, and toss decision analysis.

**Key Insight:** Winning the toss provides only a marginal advantage, with teams converting toss wins into victories approximately **50.59%** of the time.

---

## 🔍 Key Business Questions & Findings

### Q1. Has the IPL Become More Batting Friendly Over Time?
Average team scores rose from approximately **145** in 2008 to nearly **175** in 2024. Total runs per season and six-hitting frequency also rose significantly, with recent seasons crossing **1,000+ sixes** — confirming a clear shift toward aggressive batting.

### Q2. How Has Boundary Hitting Influenced Modern IPL Batting?
The rise of power hitters and high strike-rate batters has been a major driver of increasing team totals, with more sixes and faster scoring rates reinforcing the batting-friendly trend.

### Q3. How Do Bowlers Adapt to High-Scoring Conditions?
Despite increasing batting dominance, elite bowlers stay effective through strong dot-ball percentages and low economy rates, helping restrict scoring even in high-scoring environments.

### Q4. Does Winning the Toss Provide a Significant Advantage?
Teams converted toss wins into match victories only about **50.59%** of the time — match outcomes depend far more on team performance than on the toss.

### Q5. Which Teams Have Dominated IPL History?
**Mumbai Indians** and **Chennai Super Kings** have been the most consistently successful franchises, leading in cumulative wins and sustained performance across seasons.

---

## 🏆 Key Findings

- **IPL has become significantly more batting friendly** — average team scores rose from ~145 (2008) to ~175 (2024)
- **Six-hitting has reached record levels**, with recent seasons crossing 1,000+ sixes
- **Team totals continue to rise**, with the highest team score reaching **287 runs**
- **Virat Kohli** leads all-time run scoring with **8,000+ runs**
- **Yuzvendra Chahal** leads all-time wicket-taking with **200+ wickets**
- **Toss advantage remains limited**, converting to wins only **50.59%** of the time
- **Elite bowlers remain effective** through control and dot-ball pressure despite rising batting dominance

---

## ⚠️ Data Challenges & Solutions

### 1. Team Name Standardization
Inconsistent franchise names were standardized for accurate aggregation:
- Delhi Daredevils → Delhi Capitals
- Kings XI Punjab → Punjab Kings
- Royal Challengers Bangalore → Royal Challengers Bengaluru

### 2. Season Format Standardization
Inconsistent season formats were converted to a single yearly format:
- 2007/08 → 2008
- 2009/10 → 2010
- 2020/21 → 2021

### 3. Accurate Wicket Calculations
The raw `is_wicket` flag incorrectly included non-bowler dismissals (e.g., run-outs). To fix this:
- Dismissal types were analyzed separately
- Non-bowler dismissals were excluded
- Bowling stats were recalculated using official wicket attribution rules

This ensured accurate Purple Cap and bowling analysis.

---

## 📁 Repository Structure

```text
IPL_Analysis/
│
├── data/
├── power_bi/
├── report/
├── screenshots/
├── sql/
├── notebooks/
│   └── data_cleaning_and_eda.ipynb
│
├── python_loader.py
├── README.md
└── requirements.txt
```

---

## 🧰 Analytics Workflow

1. **Data Cleaning (Python/Pandas)** — Standardized team names, season formats, and resolved wicket attribution issues
2. **Data Storage (PostgreSQL)** — Loaded cleaned ball-by-ball data into a relational database
3. **Analytics (SQL)** — Built views, aggregations, and window functions for season, batting, bowling, and team-level metrics
4. **Visualization (Power BI)** — Designed interactive dashboards across five pages
5. **KPIs & Measures (DAX)** — Created calculated measures for strike rate, economy, dot ball %, toss conversion %, and more

---

## 🚀 Future Improvements

- Publish dashboard to Power BI Service
- Add venue-wise analysis
- Build a player comparison dashboard
- Include predictive analytics for match outcomes
- Integrate live IPL data APIs

---

## 📦 Deliverables

- Power BI Dashboard
- SQL Scripts
- Analytical Report
- GitHub Repository

---

## 👨‍💻 Author

**Joseph Kummari**
Final Year Undergraduate Student
Skills: SQL • PostgreSQL • Python • Power BI • DAX • Data Analytics

---

⭐ If you found this project useful, consider giving the repository a star!
