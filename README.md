# Musix Match API 1.1 (Example)
An example of the early stages of writing an api wrapper for Musix Match in Ruby. Intentionally left incomplete.
For more information on their API, see https://developer.musixmatch.com/documentation/api-methods.

An API Key is required to make use of this code, so, head over to [the developer site](https://developer.musixmatch.com) to get one (it's free).

## Example Usage:
```
track = MusixMatchTrack.new(api_key: "abcdef")
track.search(query: "Radiohead")
```
