// Sieve of Eratosthenes
vi get_primes(int input) {
    int N = max(input, 100);

    vb Alive(N, true);
    Alive.at(0) = false;
    Alive.at(1) = false;

    // i番目の素数が分かる (0-origin)
    vi Ps;

    FORE(smallest, 2, (int)(sqrt(N)+1)) {
        if (!Alive.at(smallest)) {
            continue;
        }

        for(int i = smallest * 2; i < N; i += smallest) {
            Alive.at(i) = false;
        }
    }

    REP(i, N) {
        if (Alive.at(i)) {
            Ps.pb(i);
        }
    }

    return Ps;
}

bool isPrime(int x){
    int i;
    if(x < 2)return false;
    else if(x == 2) return true;
    if(x%2 == 0) return false;
    for(i = 3; i*i <= x; i += 2) if(x%i == 0) return false;
    return true;
}
