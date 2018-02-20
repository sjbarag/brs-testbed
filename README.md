# BRS Testbed
A simple Roku channel used to execute arbitrary BrightScript files.

## Justification
This repo contains a Roku channel that shouldn't ever be published to the Roku store.  That's pretty silly on the surface!  In reality, this project exists purely to answer TODOs and other questions from the [BRS](https://github.com/sjbarag/brs) project, which aims to build a BrightScript interpreter that runs on non-Roku platforms.  A small test channel like this one helps to observe behaviors that are described ambiguously in the BrightScript documentation.  After all, a BrightScript interpreter is only useful if it behaves the same way as the official interpreter :smile:.

## Hacking
### Building
The channel builds with GNU Make, but that's just a wrapper around `zip`.  Build with `make`, and remove compiled artifacts with `make clean`.

### Adding Test Files
Test files are hosted in `./testfiles/`, and should keep their code in a `sub Main` block.  That's not strictly required, but it helps to isolate test files from each other.

**NOTE:** The list of files available to run is _not_ generated automatically, so adding a new test file requires a modification to `Main.xml` to point to it.  Simply add another `<TestFile>` element like the ones that already exist.

### Installing
1. Ensure your Roku has developer mode enabled.  If you're not sure, go through [Roku's Setup Guide](https://sdkdocs.roku.com/display/sdkdoc/Developer+Setup+Guide) again.
2. Find your Roku's IP address from `Settings > Network > About`.
3. Navigate to `http://roku.ip.addr.ess` in your browser and enter the username/password you set previously.
4. Click "Upload", then "Install" or "Replace".
5. The "BRS Testbed" channel will automatically launch (assuming there were no compile errors).

### Debugging
Use `telnet` to connect to your Roku's IP address on port 8085 to see the output of any `print` commands in the `testfiles` files.
