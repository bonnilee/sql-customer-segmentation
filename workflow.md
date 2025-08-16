sql_customer_segmentation/        <-- Project folder
│
├── setup.sql                     <-- Creates database schema
│       └─ Tables:
│          • customers
│          • orders
│
├── inserts.sql                   <-- Inserts sample data
│       └─ Populates:
│          • customers table
│          • orders table
│
├── queries.sql                   <-- Analysis & segmentation queries
│       ├─ Total spending per customer
│       ├─ RFM segmentation (Recency, Frequency, Monetary)
│       ├─ High-value ranking with customer tiers (RANK() OVER)
│       └─ Moving average of spend per customer (AVG() OVER)
│
├── customer_segmentation.db      <-- SQLite database file (auto-created)
│       └─ Stores all tables + inserted data
│
└── README.md                     <-- Documentation / portfolio explanation
        └─ Project overview, instructions, SQL skills demonstrated




# how to run 

# 1️⃣ Go to project folder
cd C:\Projects\sql_customer_segmentation

# 2️⃣ Start SQLite with a new database
sqlite3 customer_segmentation.db

# Inside SQLite shell, run these three commands:

.read setup.sql      -- Create tables
.read inserts.sql    -- Insert sample data
.read queries.sql    -- Run all analysis queries

# 3️⃣ Exit SQLite when done
.exit
