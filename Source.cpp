#include <iostream>
#include <string>
using namespace std;

extern "C" int subhan(int a,int b);

int main() {
	int num, len, result;
	string numm;
	cout << "Give the num: ";
	cin >> num;
	len = to_string(num).length();
	result = subhan(num, len);
	
	if (result == num){
		cout << "This number is armstrong number";
	}
	else {
		cout << "This number is not armstong number";
	}

	
	return 0;
}