.PHONY: examples

CC = xelatex
CV_DIR = mycv

cv.pdf: 
	$(CC) -output-directory=$(CV_DIR) $(CV_DIR)/cv.tex 
	biber $(CV_DIR)/cv
	$(CC) -output-directory=$(CV_DIR) $(CV_DIR)/cv.tex 
	$(CC) -output-directory=$(CV_DIR) $(CV_DIR)/cv.tex 

clean:
	rm -rf $(CV_DIR)/*.pdf
