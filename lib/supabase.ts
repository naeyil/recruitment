import { createClient } from "@supabase/supabase-js";

// 서버용 (API route에서 사용 — service_role 키로 RLS 우회)
export function createServiceClient() {
  return createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!
  );
}
