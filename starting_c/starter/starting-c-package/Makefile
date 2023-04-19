test: test-shoutify test-sorter

shoutify: shoutify.c
	@echo "===== Building shoutify ====="
	gcc -O0 -Wall -Werror -o $@ $<
	@echo

sorter: sorter.c
	@echo "===== Building sorter ====="
	gcc -O0 -Wall -Werror -o $@ $<
	@echo

test-shoutify: shoutify
	@echo "===== Testing shoutify ====="
	./shoutify shoutify-input-1.txt shoutify-output-1.txt
	@echo "[diff between your results and the expected results]"
	@diff shoutify-output-1.txt shoutify-expected-1.txt;\
        if [ $$? -eq 0 ]; then echo "TEST PASSED"; else echo "TEST FAILED"; fi
	@echo

test-sorter: sorter
	@echo "===== Testing sorter ====="
	./sorter sorter-input-1.txt > sorter-output-1.txt
	@echo "[diff between your results and the expected results]"
	@diff sorter-output-1.txt sorter-expected-1.txt;\
        if [ $$? -eq 0 ]; then echo "TEST PASSED"; else echo "TEST FAILED"; fi
	@echo

clean:
	rm -f sorter shoutify
