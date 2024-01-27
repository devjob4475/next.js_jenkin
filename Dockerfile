FROM node:18-alpine AS base

# สร้างโฟลเดอร์ที่จะใช้เก็บโค้ดของคุณใน Docker image
WORKDIR /app

COPY package*.json ./

# ติดตั้งแพ็คเกจที่จำเป็นและทำความสะอาดแคช
RUN npm install --force

# คัดลอกโค้ดของคุณไปยัง Docker image
COPY . .

# สร้างและสร้างแอพ Next.js ของคุณ
RUN npm run build

# กำหนดพอร์ตที่แอพของคุณจะทำงานอยู่
EXPOSE 9000

# คำสั่งที่ใช้เริ่มแอพ Next.js
CMD ["npm", "run","dev"]
