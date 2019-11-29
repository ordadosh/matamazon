
static SetElement  copyInt(SetElement number) {
    int *copy = malloc(sizeof(*copy));
    if (copy != NULL) {
        *copy = *(int *)number;
    }
    return copy;
}

static void freeInt(SetElement number) { free(number); }

static int compareInts(SetElement lhs, SetElement rhs) {
    return (*(int *)lhs) - (*(int *)rhs);
