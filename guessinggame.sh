function guess {
  file_number=$(ls | wc -l)
  user_input=-1

  while [ true ]; do
    echo "How many files are in the current directory ?"
      read user_input
      if [ -z $( echo $user_input | egrep '^[0-9]+$') ]; then
        echo "Enter an integer only !!"
      elif [ $user_input -gt $file_number ]; then
        echo "Guessed number too high"
      elif [ $user_input -lt $file_number ]; then
        echo "Guessed number too low"
      else
        echo "Congratulations you guessed it right"
        break
      fi

  done
}

guess
