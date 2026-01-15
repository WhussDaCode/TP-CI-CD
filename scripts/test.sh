#!/bin/bash
set -e
echo "🔧 Installation..."
npm ci
echo "🗄️ Database Push..."
npx prisma db push
echo "🔍 Linting..."
npm run lint --if-present
echo "🧪 Testing..."
npm test --if-present
