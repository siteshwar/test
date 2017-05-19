# regression tests for the csplit utilitiy

KEEP "*.dat"

TEST 01 'basics'
	EXEC	-n 3 -k a.dat '/=/'
		INPUT a.dat $'=\na\n=\nb\n=\nc\n=\nd\n=\ne\n=\nf\n=\ng\n=\nh\n=\ni\n=\nj\n=\nk\n=\nl\n=\nm\n=\nn\n=\no\n=\np\n=\nq\n=\nr\n=\ns\n=\nt\n=\nu\n=\nv\n=\nw\n=\nx\n=\ny\n=\nz'
		OUTPUT - $'0\n104'
		OUTPUT xx000
		OUTPUT xx001 $'=\na\n=\nb\n=\nc\n=\nd\n=\ne\n=\nf\n=\ng\n=\nh\n=\ni\n=\nj\n=\nk\n=\nl\n=\nm\n=\nn\n=\no\n=\np\n=\nq\n=\nr\n=\ns\n=\nt\n=\nu\n=\nv\n=\nw\n=\nx\n=\ny\n=\nz'
	EXEC	-n 3 -k a.dat '/=/' '{1}'
		INPUT a.dat $'=\na\n=\nb\n=\nc\n=\nd\n=\ne\n=\nf\n=\ng\n=\nh\n=\ni\n=\nj\n=\nk\n=\nl\n=\nm\n=\nn\n=\no\n=\np\n=\nq\n=\nr\n=\ns\n=\nt\n=\nu\n=\nv\n=\nw\n=\nx\n=\ny\n=\nz'
		OUTPUT - $'0\n4\n100'
		OUTPUT xx000
		OUTPUT xx001 $'=\na'
		OUTPUT xx002 $'=\nb\n=\nc\n=\nd\n=\ne\n=\nf\n=\ng\n=\nh\n=\ni\n=\nj\n=\nk\n=\nl\n=\nm\n=\nn\n=\no\n=\np\n=\nq\n=\nr\n=\ns\n=\nt\n=\nu\n=\nv\n=\nw\n=\nx\n=\ny\n=\nz'
	EXEC	-n 3 -k a.dat '/=/' '{8}'
		INPUT a.dat $'=\na\n=\nb\n=\nc\n=\nd\n=\ne\n=\nf\n=\ng\n=\nh\n=\ni\n=\nj\n=\nk\n=\nl\n=\nm\n=\nn\n=\no\n=\np\n=\nq\n=\nr\n=\ns\n=\nt\n=\nu\n=\nv\n=\nw\n=\nx\n=\ny\n=\nz'
		OUTPUT - $'0\n4\n4\n4\n4\n4\n4\n4\n4\n72'
		OUTPUT xx000
		OUTPUT xx001 $'=\na'
		OUTPUT xx002 $'=\nb'
		OUTPUT xx003 $'=\nc'
		OUTPUT xx004 $'=\nd'
		OUTPUT xx005 $'=\ne'
		OUTPUT xx006 $'=\nf'
		OUTPUT xx007 $'=\ng'
		OUTPUT xx008 $'=\nh'
		OUTPUT xx009 $'=\ni\n=\nj\n=\nk\n=\nl\n=\nm\n=\nn\n=\no\n=\np\n=\nq\n=\nr\n=\ns\n=\nt\n=\nu\n=\nv\n=\nw\n=\nx\n=\ny\n=\nz'
	EXEC	-n 3 -k a.dat '/=/' '{25}'
		OUTPUT - $'0\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4'
		OUTPUT xx000
		OUTPUT xx001 $'=\na'
		OUTPUT xx002 $'=\nb'
		OUTPUT xx003 $'=\nc'
		OUTPUT xx004 $'=\nd'
		OUTPUT xx005 $'=\ne'
		OUTPUT xx006 $'=\nf'
		OUTPUT xx007 $'=\ng'
		OUTPUT xx008 $'=\nh'
		OUTPUT xx009 $'=\ni'
		OUTPUT xx010 $'=\nj'
		OUTPUT xx011 $'=\nk'
		OUTPUT xx012 $'=\nl'
		OUTPUT xx013 $'=\nm'
		OUTPUT xx014 $'=\nn'
		OUTPUT xx015 $'=\no'
		OUTPUT xx016 $'=\np'
		OUTPUT xx017 $'=\nq'
		OUTPUT xx018 $'=\nr'
		OUTPUT xx019 $'=\ns'
		OUTPUT xx020 $'=\nt'
		OUTPUT xx021 $'=\nu'
		OUTPUT xx022 $'=\nv'
		OUTPUT xx023 $'=\nw'
		OUTPUT xx024 $'=\nx'
		OUTPUT xx025 $'=\ny'
		OUTPUT xx026 $'=\nz'
	EXEC	-n 3 -k a.dat '/=/' '{26}'
		OUTPUT - $'0\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4'
		OUTPUT xx000
		OUTPUT xx001 $'=\na'
		OUTPUT xx002 $'=\nb'
		OUTPUT xx003 $'=\nc'
		OUTPUT xx004 $'=\nd'
		OUTPUT xx005 $'=\ne'
		OUTPUT xx006 $'=\nf'
		OUTPUT xx007 $'=\ng'
		OUTPUT xx008 $'=\nh'
		OUTPUT xx009 $'=\ni'
		OUTPUT xx010 $'=\nj'
		OUTPUT xx011 $'=\nk'
		OUTPUT xx012 $'=\nl'
		OUTPUT xx013 $'=\nm'
		OUTPUT xx014 $'=\nn'
		OUTPUT xx015 $'=\no'
		OUTPUT xx016 $'=\np'
		OUTPUT xx017 $'=\nq'
		OUTPUT xx018 $'=\nr'
		OUTPUT xx019 $'=\ns'
		OUTPUT xx020 $'=\nt'
		OUTPUT xx021 $'=\nu'
		OUTPUT xx022 $'=\nv'
		OUTPUT xx023 $'=\nw'
		OUTPUT xx024 $'=\nx'
		OUTPUT xx025 $'=\ny'
		OUTPUT xx026 $'=\nz'
	EXEC	-n 3 -k a.dat '/=/' '{27}'
		OUTPUT - $'0\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4'
		OUTPUT xx000
		OUTPUT xx001 $'=\na'
		OUTPUT xx002 $'=\nb'
		OUTPUT xx003 $'=\nc'
		OUTPUT xx004 $'=\nd'
		OUTPUT xx005 $'=\ne'
		OUTPUT xx006 $'=\nf'
		OUTPUT xx007 $'=\ng'
		OUTPUT xx008 $'=\nh'
		OUTPUT xx009 $'=\ni'
		OUTPUT xx010 $'=\nj'
		OUTPUT xx011 $'=\nk'
		OUTPUT xx012 $'=\nl'
		OUTPUT xx013 $'=\nm'
		OUTPUT xx014 $'=\nn'
		OUTPUT xx015 $'=\no'
		OUTPUT xx016 $'=\np'
		OUTPUT xx017 $'=\nq'
		OUTPUT xx018 $'=\nr'
		OUTPUT xx019 $'=\ns'
		OUTPUT xx020 $'=\nt'
		OUTPUT xx021 $'=\nu'
		OUTPUT xx022 $'=\nv'
		OUTPUT xx023 $'=\nw'
		OUTPUT xx024 $'=\nx'
		OUTPUT xx025 $'=\ny'
		OUTPUT xx026 $'=\nz'
	EXEC	-n 3 -k a.dat '/=/' '{*}'
		OUTPUT - $'0\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4\n4'
		OUTPUT xx000
		OUTPUT xx001 $'=\na'
		OUTPUT xx002 $'=\nb'
		OUTPUT xx003 $'=\nc'
		OUTPUT xx004 $'=\nd'
		OUTPUT xx005 $'=\ne'
		OUTPUT xx006 $'=\nf'
		OUTPUT xx007 $'=\ng'
		OUTPUT xx008 $'=\nh'
		OUTPUT xx009 $'=\ni'
		OUTPUT xx010 $'=\nj'
		OUTPUT xx011 $'=\nk'
		OUTPUT xx012 $'=\nl'
		OUTPUT xx013 $'=\nm'
		OUTPUT xx014 $'=\nn'
		OUTPUT xx015 $'=\no'
		OUTPUT xx016 $'=\np'
		OUTPUT xx017 $'=\nq'
		OUTPUT xx018 $'=\nr'
		OUTPUT xx019 $'=\ns'
		OUTPUT xx020 $'=\nt'
		OUTPUT xx021 $'=\nu'
		OUTPUT xx022 $'=\nv'
		OUTPUT xx023 $'=\nw'
		OUTPUT xx024 $'=\nx'
		OUTPUT xx025 $'=\ny'
		OUTPUT xx026 $'=\nz'
