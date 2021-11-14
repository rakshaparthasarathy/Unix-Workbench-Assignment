echo "[Welcome to Raksha's Guessing game]"

function ask {
	echo "Please enter the number of files in the current directory:"
	read input
    files=$(ls -1 | wc -l)
}

ask

while [[ $input -ne $files ]]
do
	if [[ $input -gt $files ]]
	then
		echo "Your guess is too high. Try again"
	else
		echo "Your guess is too low. Try again"
	fi
	ask
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1
