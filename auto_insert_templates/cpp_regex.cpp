// https://atcoder.jp/contests/arc002/tasks/arc002_3
// https://cpplover.blogspot.com/2015/01/c-stdregex.html
// これはWAのソース
#include <bits/stdc++.h>
using namespace std;
using ll = long long;
// #define int ll

typedef vector<int> vi;
typedef vector<bool> vb;
typedef pair<int,int> pii;
typedef pair<char,char> pcc;
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

bool is_lr(const char c) {
    return c == 'L' || c == 'R';
}

vector<string> get_most_freq_str(const int N, const string S) {
    map<pcc, int> cnt_map;
    FORE(i, 1, N-1) {
        // L, Rは置換対象にできないのでスキップ
        if (is_lr(S.at(i-1)) || is_lr(S.at(i))) {
            continue;
        }

        pcc p = mk(S.at(i-1), S.at(i));
        if (cnt_map.count(p)) {
            cnt_map.at(p)++;
        } else {
            cnt_map[p] = 1;
        }
    }

    int max_cnt = -1;
    vector<string> max_pairs;
    // 同率だった場合に最適なほうを選ぶ必要があるかも
    for (auto kv : cnt_map){
        pcc key = kv.fst;
        int value = kv.snd;

        if (value > max_cnt) {
            max_cnt = value;

            string s = "";
            s += key.fst;
            s += key.snd;

            // debug(s);
            max_pairs = { s };
        } else if (value = max_cnt) {
            string s = "";
            s += key.fst;
            s += key.snd;

            // debug(s);
            max_pairs.pb(s);
        }
    }

    return max_pairs;
}


signed main() {
    int N;

    cin >> N;

    string S;
    cin >> S;

    if (S.size() <= 2) {
        cout << 1 << endl;
        return 0;
    }

    // ABXYで構成されるコマンドの、連続する2文字でカウント
    // 一番大きいものから2つをL,Rに置き換える
    // ただし、置き換えによって元のコマンドのカウント関係が変わることに注意
    // 貪欲に選んで、改めて貪欲でもう一回選ぶ

    const vector<string> max_pairs = get_most_freq_str(N, S);

    vector<string> candidates;
    for(auto target : max_pairs) {
        regex re(target);
        auto result = regex_replace(S, re, "L");

        candidates.pb(result);
    }

    // それぞれの候補に対してもう一回
    vector<string> replaced_finals;
    for(auto cand_s : candidates) {
        debug(cand_s);

        int n = cand_s.size();
        vector<string> max_pairs_final = get_most_freq_str(n, cand_s);

        for(auto target : max_pairs_final) {
            regex re(target);
            auto result = regex_replace(cand_s, re, "R");
            debug(result);

           replaced_finals.pb(result);
        }
    }

    // 3文字の場合など、それ以上置換できないときはその一段階手前の文字列を対象とする
    if (replaced_finals.size() == 0) {
        replaced_finals = candidates;
    }


    int ans = INF;
    for(auto replaced_final : replaced_finals) {
        debug(replaced_final);
        int len = replaced_final.size();
        if (len < ans) {
            ans = len;
        }
    }

    cout << ans << endl;
}
