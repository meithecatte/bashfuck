if (( $# != 2 )); then
    echo "usage: bash $0 source.sh output.sh" >&2
    exit 1
fi

alphabet="@!\"#\$%&'()*+,-./"
output=""
nib() {
    c="${alphabet:$1:1}"
    if [[ "$c" =~ "$"|'"' ]]; then
        output+="\\$c"
    else
        output+="$c"
    fi
}
read -r -d '' input < "$1"
for (( i=0; i < ${#input}; i++ )); do
    printf -v n %d "'${input:i:1}"
    nib n/16
    nib n%16
done

exec >"$2"

read -r line1 < "$0"
echo "$line1"
echo "__=\"$output\""
echo '__="$(__)";$____ '"'"'__=${__@'"'"'${_____%???}};$____ "$__"'
