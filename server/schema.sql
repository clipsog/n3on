-- One-row document store for the N3ON creative app (JSON mirrors client state).
CREATE TABLE IF NOT EXISTS n3on_app_state (
  id INTEGER PRIMARY KEY DEFAULT 1 CHECK (id = 1),
  payload JSONB NOT NULL DEFAULT '{}'::jsonb,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

INSERT INTO n3on_app_state (id, payload)
VALUES (1, '{}'::jsonb)
ON CONFLICT (id) DO NOTHING;
