# This file is autogenerated. Do not edit.

tl-symlinks-buildset:
	cd ${PREFIX}/bin && \
		ln -s luatex dvilualatex && \
		ln -s luatex dviluatex && \
		ln -s pdftex etex && \
		ln -s pdftex latex && \
		ln -s luahbtex lualatex && \
		ln -s pdftex pdfetex && \
		ln -s pdftex pdflatex

tl-symlinks-main:
	cd ${PREFIX}/bin && \
		ln -s pdftex amstex && \
		ln -s pdftex cslatex && \
		ln -s pdftex csplain && \
		ln -s pdftex eplain && \
		ln -s euptex eptex && \
		ln -s hitex hilatex && \
		ln -s pdftex jadetex && \
		ln -s tex lollipop && \
		ln -s luatex luacsplain && \
		ln -s pdftex mex && \
		ln -s pdftex mllatex && \
		ln -s pdftex mltex && \
		ln -s pdftex pdfcslatex && \
		ln -s pdftex pdfcsplain && \
		ln -s pdftex pdfjadetex && \
		ln -s pdftex pdfmex && \
		ln -s pdftex pdfxmltex && \
		ln -s euptex platex && \
		ln -s euptex platex-dev && \
		ln -s euptex ptex && \
		ln -s pdftex texsis && \
		ln -s euptex uplatex && \
		ln -s euptex uplatex-dev && \
		ln -s euptex uptex && \
		ln -s pdftex utf8mex && \
		ln -s xetex xelatex && \
		ln -s pdftex xmltex

tl-symlinks-full:
	cd ${PREFIX}/bin && \
		ln -s luatex dvilualatex-dev && \
		ln -s pdftex latex-dev && \
		ln -s luahbtex lualatex-dev && \
		ln -s luatex optex && \
		ln -s pdftex pdflatex-dev && \
		ln -s xetex xelatex-dev

tl-symlinks-context:
	cd ${PREFIX}/bin && \
		ln -s luametatex context && \
		ln -s ../share/texmf-dist/scripts/context/lua/context.lua context.lua && \
		ln -s ../share/texmf-dist/scripts/context/lua/mtx-context.lua mtx-context.lua && \
		ln -s luametatex mtxrun && \
		ln -s ../share/texmf-dist/scripts/context/lua/mtxrun.lua mtxrun.lua

