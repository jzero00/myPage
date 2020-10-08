-- public.board definition

-- Drop table

-- DROP TABLE board;

CREATE TABLE board (
	mcode varchar(30) NOT NULL,
	seq int4 NOT NULL,
	writer varchar(100) NOT NULL,
	title varchar(300) NOT NULL,
	"content" _bytea NOT NULL,
	regdate date NOT NULL,
	visible int4 NOT NULL
);


-- public.board foreign keys

ALTER TABLE public.board ADD CONSTRAINT board_fk FOREIGN KEY (mcode) REFERENCES menu(mcode);