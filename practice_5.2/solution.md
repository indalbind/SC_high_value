for standard in {1..12}; do
    for section in {A..E}; do
        for student in {1..40}; do
            touch ~/se2001/practice_5.2/"$standard$section"/$student
        done
    done
done