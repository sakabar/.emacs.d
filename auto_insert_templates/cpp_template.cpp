#include <bits/stdc++.h>
using namespace std;
using ll = long long;
// #define int ll

typedef vector<int> vi;
typedef vector<bool> vb;
typedef pair<int,int> pii;
typedef vector<pair<int,int> > vpii;
typedef vector<vector<bool> > vvb;
typedef vector<vector<int> > vvi;
typedef map<int, bool> mib;

typedef long long ll;
typedef vector<long long> vl;
typedef pair<long long,long long> pll;
typedef vector<pair<long long,long long> > vpll;

typedef vector<string> vs;

typedef long double ld;

#define REP(i,n) for (int i = 0; i < (n); ++i)
#define REPD(i,n) for (int i = (n-1); i >= 0; --i)
#define FORE(i, s, n) for (int i = (s); i <= (int)(n); i++)
#define FORED(i, s, n) for (int i = (s); i >= (int)(n); i--)
#define debug(x) cerr << #x << ": " << x << '\n'
#define debug2(x, y) cerr << #x << ": " << x << ", " << #y << ": " << y << '\n'
#define debug3(x, y, z) cerr << #x << ": " << x << ", " << #y << ": " << y << ", " << #z << ": " << z << '\n'
#define debugs(s) cerr << s << "\n"
#define hyphen() cerr << "--\n"

#define ALL(vec) (vec).begin(), (vec).end()
#define REVALL(vec) (vec).rbegin(), (vec).rend()

static const int dy[4] = {0,1,0,-1}, dx[4] = {1,0,-1,0};

#define fst first
#define snd second
#define pb push_back
#define mk(x,y) make_pair((x),(y))

// http://ehafib.hatenablog.com/entry/2015/12/23/164137
int qp(int a,ll b){int ans=1;do{if(b&1)ans=1ll*ans*a;a=1ll*a*a;}while(b>>=1);return ans;}
int qpm(int a,ll b,int mo){int ans=1;do{if(b&1)ans=1ll*ans*a%mo;a=1ll*a*a%mo;}while(b>>=1);return ans;}
// gcd : O(logN)
int gcd(int a,int b){return b?gcd(b,a%b):a;}
int lcm(int a, int b) { return a / gcd(a, b) * b; }

#define sz(v) int(v.size())

// x1, x2ライブラリとの被りを避ける
#define x1 x192837465
#define x2 x123456789
#define y1 y192837465
#define y2 y123456789

// typo
#define itn int
#define reutrn return
#define reutnr return
#define retrun return
#define srting string
#define stirng string
#define stirung string
#define cosnt const

#define make(type, x) type x; cin>>x;
#define make2(type, x, y) type x, y; cin>>x>>y;
#define make3(type, x, y, z) type x, y, z; cin>>x>>y>>z;
#define make4(type, x, y, z, t) type x, y, z, t; cin>>x>>y>>z>>t;

int ctoi(const char c){
    if('0' <= c && c <= '9') return (c-'0');
    return -1;
}

#define uniq(v) (v).erase(unique(ALL((v))), (v).end());

std::string replaceOtherStr(std::string &replacedStr, std::string from, std::string to) {
    const int pos = replacedStr.find(from);
    const int len = from.length();

    if (pos == std::string::npos || from.empty()) {
        return replacedStr;
    }

    return replacedStr.replace(pos, len, to);
}

std::string replaceAll(std::string &replacedStr, std::string from, std::string to) {
    int pos = replacedStr.find(from);
    int toLen = to.length();

    if (from.empty()) {
        return replacedStr;
    }

    while ((pos = replacedStr.find(from, pos)) != std::string::npos) {
        replacedStr.replace(pos, from.length(), to);
        pos += toLen;
    }
    return replacedStr;
}

// area of (0, 0)(a, b)(c, d)
double area(double a, double b, double c, double d){
    return abs(a * d - b * c) / 2.0;
}

const int PREC = 10;
#define coutf(val) cout << fixed << setprecision(PREC) << (val) << endl;

const int MOD = (int)1e9 + 7;
const int INF = numeric_limits<int>::max();

signed main() {
    make(int, N);
    make2(int, N, K);

    vector<int> As(K);
    vector<int> Bs(K);
    REP(i, K) {
        make2(int, A, B);
        A--;
        B--;

        As.at(i) = A;
        Bs.at(i) = B;
    }
}
