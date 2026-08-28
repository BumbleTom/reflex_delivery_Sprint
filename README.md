# Reflex_delivery_Sprint
Reflex is a delivery coordination system for small Kenyan retailers — replacing WhatsApp/phone-based dispatch with a structured flow for logging requests, assigning riders, and tracking delivery status in real time.

## Defining the problem

Identified that retailers use WhatsApp/phone calls with no visibility and no proof of delivery.
This mainly  affects the retailer staff, Dispatcher, Rider.

## Defining the Solution

The Reflex contains structured logging, rider assignment, and status updates.
For this, we chose web prototype for speed and accessibility.

Retailer logs a delivery request (customer name, phone, address, item).

Dispatcher assigns the request to a rider.

Rider updates status (Assigned → Picked Up → Delivered).

Retailer can track progress in real time.

# Reflex Architecture Design

The  architecture is a delivery coordination system designed for small Kenyan retailers. It replaces ad‑hoc WhatsApp/phone coordination with a structured workflow:

- Retailer logs a delivery request

- Dispatcher assigns it to a rider

- Rider updates status until delivery is complete

## Architectural Layers

### Frontend (Client Layer)

- Retailer, Dispatcher, Rider dashboards (HTML, CSS, JavaScript)

- Simple forms + fetch API calls to backend routes

- Provides real‑time visibility of delivery status

### Backend (Application Layer)

- Node.js + Express server

- REST API routes:

   - /api/retailers/request → log new request

   - /api/dispatchers/assign → assign rider

   - /api/riders/update → update status

- Business logic for request handling and validation

### Database (Data Layer)

- PostgreSQL relational schema

- Tables: Retailers, Riders, Requests, StatusUpdates

- Foreign keys enforce relationships

- StatusUpdates table tracks delivery progress over time

### Workflow Diagram

- Retailer Dashboard → submits request → Backend → Database (Requests table)

- Dispatcher Dashboard → assigns rider → Backend → Database update

- Rider Dashboard → updates status → Backend → Database (StatusUpdates table)

- Retailer Dashboard → fetches updated status → shows live delivery progress


### Trade‑Offs

Manual rider assignment → accepted for simplicity; future automation planned.

No authentication yet → accepted for demo speed; roadmap includes JWT login plus Role-Based-Access

Single database instance → accepted for pilot scale; future replication for reliability.

### Roadmap

- Add authentication and audit-logs

- Auto-assignment and analytics dashboard

- Improve to mobile app with GPS tracking and push notifications
