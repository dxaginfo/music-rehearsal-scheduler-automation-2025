# Rehearsal Scheduler

Automatically schedules band rehearsals, sends reminders, tracks attendance, and suggests optimal rehearsal times. Mobile-responsive, integrates with Google Calendar, and includes admin/group management features.

## Features
- User registration and login
- Band/group creation, invite, remove
- Calendar for scheduling rehearsals
- Attendance tracking
- Automated rehearsal time suggestions
- Google Calendar sync
- Automated email/push notifications
- Mobile-first responsive UI
- Admin tools
- Secure authentication (OAuth2, JWT)

## Tech Stack
- Front-end: React.js
- Back-end: Node.js + Express
- Database: PostgreSQL
- Deployment: Docker, Vercel/Netlify (front), AWS/Heroku/Render (back)

## Setup
1. Clone repo
2. `cd client && npm install`
3. `cd ../server && npm install`
4. Set environment vars (see below)
5. `docker-compose up` or individual scripts
6. Access via browser

## Env Vars
- POSTGRES_URL
- JWT_SECRET
- GOOGLE_CLIENT_ID
- GOOGLE_CLIENT_SECRET
- ...

## Deployment
- Update environment variables as needed
- Push to GitHub
- Deploy using docker-compose or supported service

## Next Steps
- Set up calendar API credentials
- Configure domain and secure SSL certificate

## Contact
Email dev@yourdomain.com for support.
