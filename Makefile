.PHONY: examples

CC = xelatex
CV_DIR = mycv

cv.pdf: 
	$(CC) -output-directory=$(CV_DIR) $(CV_DIR)/cv.tex 

clean:
	rm -rf $(CV_DIR)/*.pdf
