# J'RAMOS — Cotizador web

Usa el logo proporcionado y una paleta crema/beige, negro, gris oscuro y gris plata. Incluye catálogo adaptable a móviles, filtros Hombre/Mujer/Unisex, precios minorista y mayorista, carrito con activación mayorista desde 12 unidades variadas, pedidos por WhatsApp (+51 927857607), acceso de administración, alta de productos y carga de fotos.

## Publicación gratuita
1. Crea un proyecto en https://supabase.com/
2. Ejecuta `supabase/schema.sql` en SQL Editor.
3. Crea el usuario administrador en Authentication > Users.
4. Configura políticas RLS de escritura y Storage para permitir cambios solo al administrador. No habilites escritura pública y nunca uses la clave `service_role` en el navegador.
5. Copia `.env.example` a `.env` y completa `VITE_SUPABASE_URL` y `VITE_SUPABASE_ANON_KEY` desde Project Settings > API.
6. Instala Node.js 20+, ejecuta `npm install` y `npm run dev` para probar.
7. Sube el proyecto a GitHub, impórtalo en https://vercel.com/, define las mismas variables de entorno, usa `npm run build` y carpeta `dist`, y pulsa Deploy.
8. La URL gratuita `*.vercel.app` que genere Vercel será la que compartas.

**Estado:** preparado para publicar, pero todavía no está alojado ni conectado a una base de datos. La tienda muestra productos de demostración hasta configurar Supabase. El panel de acceso y la carga permanente de fotos requieren completar las políticas de seguridad indicadas arriba.
