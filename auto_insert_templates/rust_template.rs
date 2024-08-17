fn getline() -> String {
    let mut __ret = String::new();
    std::io::stdin().read_line(&mut __ret).ok();
    return __ret;
}

fn solve() -> i32 {
    return 0;
}

fn main() {
    let s = getline();
    let vec: Vec<i32> = s.trim().split(' ').map(|s| s.parse().unwrap()).collect();
    let x = vec[0];
    let y = vec[1];

    let ans = solve();
    println!("{}", ans);
}
