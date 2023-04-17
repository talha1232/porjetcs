def selectionsort(unsorted_array):
    arrayinput=len (unsorted_array) # get the length of the input array
    rangeofarray=range(arrayinput)# create a range from 0 to n-1

    for j in rangeofarray:
        minimum_index= j # assume the current index is the minimum value
        for l in range(j+1,arrayinput): # iterate over the remaining elements
            if unsorted_array[l] < unsorted_array[minimum_index]:  # if an element is smaller than the current minimum, update the minimum index
                minimum_index= l
        # Swap  the minimum element and the current element
        unsorted_array[j], unsorted_array[minimum_index] = unsorted_array[minimum_index], unsorted_array[j]
    print(unsorted_array) # print the sorted array
    return unsorted_array # return the sorted
