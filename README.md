AWS Cloud Management & Automated Backup System
1. Project Overview

This project implements a dual-layered cloud architecture focused on Data Durability and Cost Governance. It automates local-to-cloud data synchronization while providing real-time billing alerts to prevent budget overruns.
2. Component 1: Cloud Cost Calculator

Objective: Monitor AWS account spending and alert the administrator via email when thresholds are met.

    Monitoring: Tracks EstimatedCharges within the AWS/Billing namespace.

    Logic: A CloudWatch Alarm set in us-east-1 with a threshold of $1.00 USD.

    Notifications: Integrated with Amazon SNS to push alerts to amaysajwan055@gmail.com.

3. Component 2: Automated Backup Engine

Objective: Securely archive local data from the ASUS TUF Gaming F15 to AWS S3 with cost-tiering.

    Scripting: Bash script utilizing tar for compression and the AWS CLI for high-level S3 synchronization.

    Scheduling: Automated via cron to execute daily at 03:00 AM.

    Storage Strategy:

        Versioning: Enabled to protect against accidental object deletion.

        Lifecycle Management: S3 Lifecycle Policy transitions objects to S3 Glacier after 30 days to minimize storage costs.

4. Technical Stack

    Cloud: AWS (S3, CloudWatch, SNS, IAM).

    OS: Linux (Ubuntu/Debian-based).

    Tools: AWS CLI, Bash, Cron.

