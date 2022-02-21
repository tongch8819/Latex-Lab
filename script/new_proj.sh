source script/config.sh

if [ $# -ne 1 ]; then
    echo "$0 [project name]"
    exit 1
fi

pj_name=$1

# make directory
if [ ! -d $pj_name ]; then
    mkdir $pj_name
else
    echo "Project: $pj_name already exists."
    exit 1
fi

# init files
pushd $pj_name
mkdir fig section
touch $pj_name.tex ref.bib pkgs.tex

cat $cwd/corpse/art_tplt.tex > $pj_name.tex
cat $cwd/corpse/demo.bib > ref.bib
cat $cwd/corpse/common_pkgs.tex > pkgs.tex
popd;

