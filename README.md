# Create GitHub Issue

Bash script that creates a GitHub issue on a repo **if** it's missing. Uses the GitHub [search api](https://docs.github.com/en/rest/search?apiVersion=2022-11-28).

| Environment Variables | Description                    | Required?          |
|-----------------------|--------------------------------|--------------------|
| GH_ISSUE_LABELS       | Issue label, (comma separated) | :x:                |
| GH_ISSUE_AUTHOR       | Issue author                   | :x:                |
| GH_ISSUE_TITLE        | Issue title                    | :heavy_check_mark: |
| GH_TOKEN              | User token                     | :heavy_check_mark: |
| GH_ISSUE_BODY         | Issue body                     | :heavy_check_mark: |
| GH_ISSUE_BODY_EXT     | Issue body extension           | :x:                |
| GH_ISSUE_REPO         | Github repository              | :heavy_check_mark: |


## Running the script

Set the envs you require and then use the following options to run:

### Using source
````
./create-github-issue    
````

### Using docker
````
docker run --rm --init \
-e GH_ISSUE_REPO="$GH_ISSUE_REPO" -e GH_TOKEN="$GH_TOKEN" -e GH_ISSUE_TITLE="$GH_ISSUE_TITLE" \
-e GH_ISSUE_AUTHOR="$GH_ISSUE_AUTHOR" -e GH_ISSUE_LABELS="bug" -e GH_ISSUE_BODY="$GH_ISSUE_BODY" \
bennsimon/create-github-issue:latest
````
