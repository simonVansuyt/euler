#include <iostream>
#include <set>
#include <vector>

using namespace std;

void print_vector(const vector<unsigned long long>& v) {
    for (int i=0; i<v.size()-1; i++) {
        cout << v[i] << ", ";
    }
    cout << v[v.size()-1] << endl;
}

set<unsigned long long> elements_in_pascal_triangle(int rows)
{
    // basic case 
    if (rows <= 2) {
        return {1};
    }

    set<unsigned long long> elem_in_triangle;

    // construct the triangle
    // hoeft niet de vollidge triangle op te bouwen de laaste rij bijhouden is goed genoeg
    vector<vector<unsigned long long>> triangle;

    // 1
    // 1 1
    triangle.push_back({1});
    print_vector(triangle[0]);
    triangle.push_back({1, 1});
    print_vector(triangle[1]);
    
    for (int n=2; n<rows; n++) {
        // create row n
        vector<unsigned long long> row = {1};
        for (int k=1; k<n; k++) {
            unsigned long long c_nk = triangle[n-1][k-1] + triangle[n-1][k];
            row.push_back(c_nk);
            elem_in_triangle.insert(c_nk);
        }
        row.push_back(1);
        print_vector(row);
        triangle.push_back(row);
    }

    return elem_in_triangle;
}

bool check_if_prime(int n)
{
    // Corner case
    if (n <= 1)
        return false;
  
    // Check from 2 to n-1
    for (int i=2; i<n; i++)
        if (n % i == 0)
            return false;
  
    return true;
}

int main()
{
    set<unsigned long long> elem_in_triangle = elements_in_pascal_triangle(51);

    vector<unsigned long long> primes = {2}; // niet zo mooi dat je start met 2 ma he
    unsigned long long result = 1;

    for (unsigned long long val: elem_in_triangle) {
        // first check all primes 
        int i=0;
        unsigned long long sq_prime = primes[i] * primes[i];
        while (i<primes.size() && val % sq_prime != 0) {
            sq_prime = primes[i] * primes[i];
            i++;
        }
        // if no square of a prime in primes divides val -> start searching for new primes
        if (val % sq_prime != 0) {
            unsigned long long j = *(primes.end()-1)+1;
            bool valid = true;
            while (j*j<=val && valid) {
                // new prime found
                if (check_if_prime(j)) {
                    // cout << "prime=" << j << endl;
                    primes.push_back(j);
                    if (val % (j*j) == 0) {
                        valid = false;
                    }
                }
                j++;
            }
            if (valid) {
                // no square of a prime divides val
                cout << "result += " << val << endl;
                result += val;
            }
        }
    }

    print_vector(primes);
    cout << result << endl;
    return result;
}
