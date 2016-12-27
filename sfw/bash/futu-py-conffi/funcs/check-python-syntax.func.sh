# sfw/bash/futu-py-conffi/funcs/check-python-syntax.func.sh

# v0.1.0
# ---------------------------------------------------------
# check the python synax for all the *.py files under the 
# <<product_version_dir/sfw/python
# ---------------------------------------------------------
doCheckPythonSyntax(){

	doLog "DEBUG START doCheckPythonSyntax"
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	cd $product_version_dir/sfw/python
	# python3 -m compileall "$product_version_dir/sfw/python"

	# foreach *.py file ...
	while read -r f ; do \

		py_name_ext=$(basename $f)
		py_name=${py_name_ext%.*}		

		doLog "python3 -c \"import $py_name\""
		# doLog "python3 -m py_compile $f"

		python3 -c "import $py_name"
		# python3 -m py_compile "$f"
		test $! -ne 0 && sleep 5

	done < <(find "$product_version_dir/sfw/python" -maxdepth 1 -type f -name "*.py")

	doLog "DEBUG STOP  doCheckPythonSyntax"
}
# eof func doCheckPythonSyntax


# eof file: sfw/bash/futu-py-conffi/funcs/check-python-syntax.func.sh
