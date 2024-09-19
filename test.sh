 find . -name "*.tf" -exec dirname {} \; | sort -u | while read dir; do
            echo "Running TFLint in $dir"
            tflint --chdir="$dir" -f compact 
done
