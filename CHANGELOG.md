# Changelog

All notable changes to SwiftPOS are documented here.

## v1.1.0 — Improvements & Tier Enforcement (March 2026)

### Improvements
- Improved order receiving workflow with better cost and price tracking
- Improved agent portal order management
- Unified barcode and item search in Fast Stock-In
- Added status filter to Orders page
- Added payment status filter to Sales page
- Added Void Sale option with confirmation dialog
- Added A4 (210mm) paper size for receipt templates
- Improved currency formatting across all pages
- Smoother page loading and navigation
- Commission UI automatically hidden when agent rate is 0%

### Tier Enforcement
- Pro/Enterprise feature separation enforced across full stack
- Pro: Expenses, Safes, Damages, Refunds, Backup, Fast Stock-In, Expiry Management
- Enterprise: Customers, Promotions, Employees, Cashier Logs, Digital Payments, Offline Mode, Agents, Forecasting, Pre-Orders, Scale Integration, Thermal Printing, WhatsApp, Labels
- All API routes, sidebar, POS, and dashboard properly gated by license tier
- Agent portal access restricted to Enterprise license

### Internationalization
- Now supports 9 languages: English, Arabic, Sorani Kurdish, Hindi, Indonesian, Portuguese, Russian, Turkish, Urdu
- Added missing status, template, and day name translations

## v1.0.0 — Initial Release (February 2026)

- Point of Sale terminal with barcode scanning and product search
- Inventory management with stock tracking and low-stock alerts
- Customer management with purchase history
- Basic sales reports and daily summaries
- Receipt customization (58mm / 80mm thermal paper)
- Multi-language support (English, Arabic, Sorani Kurdish)
- 30+ currency support with auto-formatting
- SQLite and PostgreSQL database support
- Docker deployment with one-command setup
- cPanel / shared hosting deployment support
- Role-based access: Admin, Manager, Accountant, Cashier
- License key activation and validation system
