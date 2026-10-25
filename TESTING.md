# v1.0.0 verification

2026-10-25, Chromium-based Aside browser. The complete self-contained index.html was loaded as a browser document for testing because this automation environment does not allow file:// navigation. Tests do not claim direct Windows file-association/Start.cmd execution, auditory listening or other OS/browser coverage.

Passed:
- Built-in MusicXML score renders (12 measures, 66 notes) and playback time advances.
- Built-in MIDI renders 114 notes, two Korean UTF-8 track names and time advances.
- File input loads a real generated .mid and .musicxml fixture.
- Compressed .mxl fixture with META-INF/container.xml loads successfully.
- Stop resets playback position; speed change to 150% updates duration and playback continues.
- Malformed MIDI is rejected with a readable error and later valid files recover.
- No uncaught browser errors during the above tests.
- No remote script or stylesheet tags; dependencies are embedded and connect-src is none.

Remaining manual checks: open extracted Start.cmd or index.html in current Windows Edge/Chrome; confirm sound output and test your own complex scores. Repeat/D.C./D.S. interpretation is approximate.
