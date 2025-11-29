# LegalMind AI - O'zbekiston Yuridik Platforma

Bu loyiha O'zbekiston qonunchiligi asosida ishlaydigan sun'iy intellekt yordamchisi.

## 🚀 O'rnatish va Ishga tushirish

Loyihani ishga tushirishning **2 xil** yo'li bor: Docker bilan yoki to'g'ridan-to'g'ri Python bilan.

---

## 🐳 1-usul: Docker bilan ishga tushirish (Tavsiya etiladi)

### 1. Docker o'rnatilganligini tekshirish
Docker Desktop o'rnatilgan bo'lishi kerak. Tekshirish uchun:
```bash
docker --version
docker-compose --version
```

### 2. `.env` faylini sozlash
`.env.example` faylidan `.env` yarating:
```bash
cp .env.example .env
```

Keyin `.env` fayliga o'z OpenAI API kalitingizni qo'shing:
```
OPENAI_API_KEY="sk-proj-your-api-key-here"
```

### 3. Konteyner ishga tushirish
```bash
docker-compose up --build
```

Dastur ishga tushgach, brauzerda `http://localhost:5500` manziliga kiring.

Konteyner to'xtatish uchun:
```bash
docker-compose down
```

---

## 🐍 2-usul: To'g'ridan-to'g'ri Python bilan ishga tushirish

Do'stingiz loyihani ishga tushirishi uchun quyidagi qadamlarni bajarishi kerak:

### 1. Python o'rnatilganligini tekshirish
Kompyuterda Python o'rnatilgan bo'lishi kerak. Tekshirish uchun terminalda quyidagi buyruqni yozing:
```bash
python --version
```

### 2. Kutubxonalarni o'rnatish
Loyihani ishga tushirishdan oldin kerakli kutubxonalarni o'rnatish lozim. Terminalda loyiha papkasiga kirib, quyidagi buyruqni bering:

```bash
pip install -r requirements.txt
```

### 3. API Kalitini sozlash
`.env` fayli ichida OpenAI API kaliti bo'lishi shart. Agar `.env` fayli bo'lmasa, yangi yarating va ichiga quyidagini yozing:

```
OPENAI_API_KEY=sk-proj-... (bu yerga o'z API kalitingizni qo'yasiz)
```

### 4. Dasturni ishga tushirish
Barcha narsa tayyor bo'lgach, dasturni ishga tushirish uchun:

```bash
python main.py
```

Dastur ishga tushgandan so'ng, brauzerda `http://127.0.0.1:5500` manziliga kiring.

## 📂 Fayllar tuzilishi
- `main.py` - Asosiy Python backend kodi.
- `data.json` - Notarius va tezkor javoblar ma'lumotlar bazasi.
- `templates/index.html` - Veb-sayt ko'rinishi (Frontend).
- `requirements.txt` - Kerakli kutubxonalar ro'yxati.
