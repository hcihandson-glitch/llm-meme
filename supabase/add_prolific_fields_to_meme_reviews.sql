-- Add prolific_pid, study_id, and session_id to meme_reviews table
ALTER TABLE public.meme_reviews 
ADD COLUMN IF NOT EXISTS prolific_pid text NULL,
ADD COLUMN IF NOT EXISTS study_id text NULL,
ADD COLUMN IF NOT EXISTS session_id text NULL;

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_meme_reviews_prolific_pid 
ON public.meme_reviews USING btree (prolific_pid) 
TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS idx_meme_reviews_study_id 
ON public.meme_reviews USING btree (study_id) 
TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS idx_meme_reviews_session_id 
ON public.meme_reviews USING btree (session_id) 
TABLESPACE pg_default;

-- Verify the changes
SELECT column_name, data_type, is_nullable 
FROM information_schema.columns 
WHERE table_name = 'meme_reviews' 
AND table_schema = 'public'
ORDER BY ordinal_position;
