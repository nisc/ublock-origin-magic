# Custom uBlock Origin Filters

Custom uBlock Origin filters for increased privacy, UX, and performance.

## Filter Lists

### [chatgpt-filters.txt](filters/chatgpt-filters.txt) ([raw](https://raw.githubusercontent.com/nisc/ublock-origin-magic/main/filters/chatgpt-filters.txt))
Blocks visual noise on ChatGPT (e.g., Upgrade prompts).

### [google-filters.txt](filters/google-filters.txt) ([raw](https://raw.githubusercontent.com/nisc/ublock-origin-magic/main/filters/google-filters.txt))
Blocks unwanted Google services and sign-in prompts.

### [grok-filters.txt](filters/grok-filters.txt) ([raw](https://raw.githubusercontent.com/nisc/ublock-origin-magic/main/filters/grok-filters.txt))
Blocks animations, transitions, and CPU-intensive screensavers.

### [linkedin-filters.txt](filters/linkedin-filters.txt) ([raw](https://raw.githubusercontent.com/nisc/ublock-origin-magic/main/filters/linkedin-filters.txt))
Blocks reposts, ads, trackers, and social noise (e.g., "X supports/loves/celebrates this").

### [youtube-filters.txt](filters/youtube-filters.txt) ([raw](https://raw.githubusercontent.com/nisc/ublock-origin-magic/main/filters/youtube-filters.txt))
Blocks chat, comments, and recommended content sections (via [Travis Llado](https://www.travisllado.com/2025/05/my-ublock-origin-rules.html)).

## Usage

**Preferred (Auto-Updating) Method:**

1. Open uBlock Origin settings
2. Go to the "Filter lists" tab
3. Click "Import..." at the bottom and paste the raw URLs of the desired filter lists, e.g.: `https://raw.githubusercontent.com/nisc/ublock-origin-magic/main/filters/google-filters.txt`
4. Click "Apply changes". The filter list will auto-update if the repository changes.

**Alternative (Manual Import, Editable):**

1. Open uBlock Origin settings
2. Go to the "My filters" tab
3. Click "Import and append..." and select the desired filter file (or manually copy/paste)
   - This method allows you to edit the filters directly in uBlock Origin, but requires you to manually download and import the files. **It will not auto-update.**

## Combined Filter List

Run `./create-combo-filter-list.sh` to generate `all-filters-for-import.txt` - a single file containing all filter lists (for import into uBlock Origin).
