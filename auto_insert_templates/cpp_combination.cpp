// agc17_a
#include <bits/stdc++.h>
using namespace std;
using ll = long long;
using P = pair<int, int>;

#define int ll

#define _GLIBCXX_DEBUG

#define REP(i,n) for (int i = 0; i < (n); ++i)
#define REPD(i,n) for (int i = (n-1); i >= 0; --i)
#define FORE(i, s, n) for (int i = (s); i <= (int)(n); i++)
#define debug(x) cerr << #x << ": " << x << '\n'
#define hyphen() cerr << "--\n"

#define ALL(vec) (vec).begin(), (vec).end()
#define REVALL(vec) (vec).rbegin(), (vec).rend()

#define fst first
#define snd second
#define pb push_back

const int MOD = (int)1e9 + 7;
const int INF = numeric_limits<int>::max();

int calc_combination(map<P, int>& memo, int n, int r) {
    P p = make_pair(n, r);

    if (memo.count(p)) {
        return memo.at(p);
    }

    if (r == 0) {
        return 1;
    }

    if (r == 1) {
        return n;
    }

    if (2 * r > n) {
        return calc_combination(memo, n, (n-r));
    }

    int a = calc_combination(memo, n-1, r);
    int b = calc_combination(memo, n-1, r-1);
    int ans = a + b;

    memo[p] = ans;
    return ans;
}

signed main() {
    int N, R;

    cin >> N >> R;

    int odd_pack_count = 0;
    int even_pack_count = 0;
    vector<int> As(N);
    REP(i, N) {
        int A;
        cin >> A;

        As.at(i) = A;
        if (A % 2 == 0) {
            even_pack_count += 1;
        } else {
            odd_pack_count += 1;
        }
    }

    debug(even_pack_count);
    debug(odd_pack_count);

    map<P, int> memo;

    if (R == 0) {
        cerr << "hit" << endl;
        // 偶数になるように選ぶ
        // → 偶数個のクッキーから好きな数だけ、奇数個のクッキーの中から2n個選ぶ
        // (oddC0 + oddC2 + oddC4 + ... oddC2n) * 2^even

        int ans = 0;
        for(int r = 0; r <= (odd_pack_count / 2) * 2; r += 2) {
            int c = calc_combination(memo, odd_pack_count, r);
            debug(c);
            ans += c;
        }

        ans *= pow(2, even_pack_count);
        cout << ans << endl;
    } else {
        // 奇数になるように選ぶ
        // → 偶数個のクッキーから好きな数だけ、奇数個のクッキーの中から2n+1個選ぶ
        // (oddC1 + oddC3 + oddC5 + ... oddC(2n+1)) * 2^even

        int ans = 0;
        int max;
        if (odd_pack_count % 2 == 1) {
            max = odd_pack_count;
        } else {
            max = odd_pack_count - 1;
        }
        debug(max);

        for(int r = 1; r <= max; r += 2) {
            ans += calc_combination(memo, odd_pack_count, r);
        }

        ans *= pow(2, even_pack_count);
        cout << ans << endl;

    }
}
