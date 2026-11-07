# خلود سات

موقع + لوحة إدارة (Static HTML + Supabase). بدون سيرفر.

## الإعداد
1. أنشئ مشروع على supabase.com ← SQL Editor ← الصق محتوى `schema.sql` ← Run.
2. Authentication ← Users ← Add user (إيميلك وكلمة مرور) ← فعّل Auto Confirm. هذا حساب الأدمن. وعطّل Sign-ups من Authentication > Providers > Email حتى لا يسجل أحد غيرك.
3. Project Settings ← API: انسخ Project URL و anon public key والصقهم في `config.js` مع رقم الواتساب والموبايل والعنوان.
4. ارفع الملفات على GitHub (مستودع جديد) ← Settings ← Pages ← Branch: main ← Save.
5. الموقع: `https://USERNAME.github.io/REPO/` ولوحة الإدارة: `/admin.html`.

الـ anon key آمن للنشر العلني لأن الحماية بسياسات RLS في `schema.sql`. لا تضع service_role key أبداً.
