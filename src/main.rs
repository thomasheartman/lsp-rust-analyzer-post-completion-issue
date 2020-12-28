fn main() {
    // trying to expand the below line seems to succeed or fail based
    // on recent actions in the current buffer. To expand it, move the
    // cursor to the end of the line and use Rust Analyzer's
    // post-completion function for `expr.if`.
    true.if

    println!("Hello, world!");
}
