-- Supabase SQL Editor에서 실행하세요
-- https://supabase.com/dashboard/project/lrktxyfzxwwpjffzltnq/sql/new

CREATE TABLE applicants (
  id            BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  created_at    TIMESTAMPTZ DEFAULT now(),
  name          TEXT NOT NULL,
  birth_date    TEXT NOT NULL,
  phone         TEXT NOT NULL,
  location      TEXT NOT NULL,
  own_vehicle   TEXT NOT NULL,
  license_type  TEXT NOT NULL,
  vehicle_type  TEXT NOT NULL,
  branch1       TEXT NOT NULL,
  branch2       TEXT,
  work_hours    TEXT NOT NULL,
  introduction  TEXT NOT NULL,
  experience    TEXT,
  screening     TEXT,              -- 전화스크리닝 (담당자 수동 입력)
  status        TEXT DEFAULT '서류심사',  -- 진행상황
  branch        TEXT NOT NULL,     -- URL 파라미터 자동 태깅
  source        TEXT DEFAULT 'direct',
  filter_pass   TEXT,              -- Make가 처리
  msg1_sent     TEXT,
  msg2_sent     TEXT,
  note          TEXT               -- 비고 (중복지원 등)
);

-- 전화번호 중복 조회 빠르게
CREATE INDEX idx_applicants_phone ON applicants (phone);

-- 지점별 필터링 빠르게
CREATE INDEX idx_applicants_branch ON applicants (branch);

-- 진행상황별 필터링
CREATE INDEX idx_applicants_status ON applicants (status);
