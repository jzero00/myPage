-- public.board definition

-- Drop table

-- DROP TABLE board;
-- DROP TABLE member;

CREATE TABLE board (
	mcode varchar(30) NOT NULL,
	seq int4 NOT NULL,
	writer varchar(100) NOT NULL,
	title varchar(300) NOT NULL,
	"content" text NOT NULL,
	regdate date NOT NULL,
	visible int4 NOT NULL,
	view_cnt int4 NOT NULL,
	CONSTRAINT board_un UNIQUE (seq)
);

CREATE TABLE member (
	id varchar(30) NOT NULL,
	"password" varchar NOT NULL,
	"name" varchar(30) NOT NULL,
	nickname varchar NOT NULL,
	"enable" varchar NOT NULL,
	authority varchar NOT NULL,
	CONSTRAINT member_pk PRIMARY KEY (id)
);

-- Column comments

COMMENT ON COLUMN public."member".id IS 'ID';
COMMENT ON COLUMN public."member"."password" IS 'password';
COMMENT ON COLUMN public."member"."name" IS '이름';
COMMENT ON COLUMN public."member".nickname IS '닉네임';
COMMENT ON COLUMN public."member"."enable" IS '활성화여부';
COMMENT ON COLUMN public."member".authority IS '권한';


-- public.board foreign keys

ALTER TABLE public.board ADD CONSTRAINT board_fk FOREIGN KEY (mcode) REFERENCES menu(mcode);


-- board_seq 생성
CREATE SEQUENCE board_seq START 1;