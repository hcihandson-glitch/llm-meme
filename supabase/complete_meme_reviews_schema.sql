-- Complete meme_reviews table schema with prolific fields
-- This is the full table definition including all fields

CREATE TABLE IF NOT EXISTS public.meme_reviews (
  id bigserial NOT NULL,
  submission_id bigint NULL,
  topic_id text NULL,
  template_id text NULL,
  variation_number integer NULL,
  submission_participant_id text NULL,
  reviewer_participant_id text NOT NULL,
  prolific_pid text NULL,
  study_id text NULL,
  session_id text NULL,
  humor integer NOT NULL,
  shareability integer NOT NULL,
  creativity integer NOT NULL,
  image_url text NULL,
  caption text NULL,
  created_at timestamp with time zone NULL DEFAULT now(),
  task text NULL,
  memenumber smallint NULL,
  
  CONSTRAINT meme_reviews_pkey PRIMARY KEY (id),
  
  CONSTRAINT meme_reviews_reviewer_participant_id_topic_id_variation_num_key UNIQUE (
    reviewer_participant_id,
    topic_id,
    variation_number
  ),
  
  CONSTRAINT meme_reviews_humor_check CHECK (
    (humor >= 1) AND (humor <= 5)
  ),
  
  CONSTRAINT meme_reviews_shareability_check CHECK (
    (shareability >= 1) AND (shareability <= 5)
  ),
  
  CONSTRAINT meme_reviews_funny_check CHECK (
    (creativity >= 1) AND (creativity <= 5)
  )
) TABLESPACE pg_default;

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_meme_reviews_reviewer 
ON public.meme_reviews USING btree (reviewer_participant_id) 
TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS idx_meme_reviews_topic 
ON public.meme_reviews USING btree (topic_id) 
TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS idx_meme_reviews_variation 
ON public.meme_reviews USING btree (topic_id, variation_number) 
TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS idx_meme_reviews_prolific_pid 
ON public.meme_reviews USING btree (prolific_pid) 
TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS idx_meme_reviews_study_id 
ON public.meme_reviews USING btree (study_id) 
TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS idx_meme_reviews_session_id 
ON public.meme_reviews USING btree (session_id) 
TABLESPACE pg_default;

-- Verify the table structure
SELECT column_name, data_type, is_nullable, column_default
FROM information_schema.columns 
WHERE table_name = 'meme_reviews' 
AND table_schema = 'public'
ORDER BY ordinal_position;
