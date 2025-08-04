ifndef JOBS
  JOBS := 4
endif
MAKEFLAGS += -j$(JOBS)

.PHONY: all clean resume-cn.pdf resume-cn-public.pdf

all: resume-cn.pdf resume-cn-public.pdf

clean:
	rm resume-cn.pdf resume-cn-public.pdf

resume-cn.pdf: resume-cn.typ
	typst compile resume-cn.typ resume-cn.pdf --input level=submit

resume-cn-public.pdf: resume-cn.typ
	typst compile resume-cn.typ resume-cn-public.pdf --input level=public