POSITIONAL=()

TRANSLATION='--preprocessor common/preprocessors/without_translation.js'

while [[ $# -gt 0 ]]
do
key="$1"
case $key in
    --trans|-t)
    TRANSLATION='--preprocessor common/preprocessors/translation.js'
    shift # past argument
    shift # past value
    ;;
    *)    # unknown option  
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

echo $TRANSLATION
reveal-md nozvezh_stalian/kinnig.md -w --theme common/theme/custom.css $TRANSLATION
