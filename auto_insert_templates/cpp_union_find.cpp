// https://atcoder.jp/contests/arc032/tasks/arc032_2
// https://www.slideshare.net/chokudai/union-find-49066733
#include <bits/stdc++.h>
using namespace std;
using ll = long long;
// #define int ll

typedef vector<int> vi;
typedef vector<bool> vb;
typedef pair<int,int> pii;
typedef vector<pair<int,int> > vpii;
typedef vector<vector<bool> > vvb;
typedef map<int, bool> mib;

typedef long long ll;
typedef vector<long long> vl;
typedef pair<long long,long long> pll;
typedef vector<pair<long long,long long> > vpll;

typedef vector<string> vs;

typedef long double ld;

#define _GLIBCXX_DEBUG

#define REP(i,n) for (int i = 0; i < (n); ++i)
#define REPD(i,n) for (int i = (n-1); i >= 0; --i)
#define FORE(i, s, n) for (int i = (s); i <= (int)(n); i++)
#define debug(x) cerr << #x << ": " << x << '\n'
#define debug2(x, y) cerr << #x << ": " << x << ", " << #y << ": " << y << '\n'
#define debug3(x, y, z) cerr << #x << ": " << x << ", " << #y << ": " << y << ", " << #z << ": " << z << '\n'
#define hyphen() cerr << "--\n"

#define ALL(vec) (vec).begin(), (vec).end()
#define REVALL(vec) (vec).rbegin(), (vec).rend()

static const int dy[4] = {0,1,0,-1}, dx[4] = {1,0,-1,0};

#define fst first
#define snd second
#define pb push_back
#define mk(x,y) make_pair((x),(y))

const int MOD = (int)1e9 + 7;
const int INF = numeric_limits<int>::max();

///////////////////////
const int MAX_N = 10000000;
vector<int> par(MAX_N);
vector<int> mysize(MAX_N);
vector<int> myrank(MAX_N);

void init(int n) {
    REP(i, n) {
        par.at(i) = i;
        mysize.at(i) = 1;
        myrank.at(i) = 0;
    }
}

int root(int x) {
    return par.at(x) == x ? x : par.at(x) = root(par.at(x));
}

bool same(int x, int y) {
    return root(x) == root(y);
}

void unite(int x, int y) {
    x = root(x);
    y = root(y);

    if (x == y) return;

    if (myrank.at(x) < myrank.at(y)) {
        par.at(x) = y;
        mysize.at(y) += mysize.at(x);

    } else {
        par.at(y) = x;
        mysize.at(x) += mysize.at(y);
        if (myrank.at(x) == myrank.at(y)) myrank.at(x)++;
    }
}

int size(int x) {
    return mysize.at(root(x));
}


///////////////////

signed main() {
    int N, M;

    cin >> N >> M;

    if (N == 1) {
        cout << 0 << endl;
        return 0;
    }

    // まずは全ノードがバラバラ
    init(N);

    REP(i, M) {
        int A, B;
        cin >> A >> B;

        // 既に道があるノードたちを併合する
        unite(A, B);
    }

    int ans = 0;
    // ノード0を基点として、くっつけていく
    FORE(i, 1, N-1) {
        if (!same(0, i)) {
            unite(0, i);
            ans++;
        }
    }

    cout << ans<< endl;
}
