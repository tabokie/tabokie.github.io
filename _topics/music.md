---
layout: blog
title: Music
childs:
---
<span class="hidden-text"># Created: 2021-07-19; Modified: 2023-02-22</span>

Any piece of music is an arrangement of sounds. Percussive music is one single sound played repeatedly, and we arrange the temporal distance between them (rhythm). Melodic music is different sounds played one by one, and we arrange both the temporal distance and pitch difference between them. For more complex music, we also needs to arrange different sounds played at the same time (chorus).

Music theory is the study of such arrangement.

 There're infinite sounds and infinite combinations to arrange them. 

 It starts with restricting the available sounds, and locating the pivotal elements of good harmony.

## Melody

pitch and rhythm

### Alphabet

melodic : the rhythmic arragement of one single sound.

One single sound can form a music (percussion instrument), but multiple sounds 

### Words

One sound:

- Note: Sound, in specific standardized sound that can be procedurally generated from a base frequency. It's the alphabet of music, used by musicians to share and reproduce melodies.

Two sounds:

- Interval: Distance in pitch/frequency between two notes. **Just like human ears, we measures pitch distances in logarithmic fashion**, e.g. `distance(220Hz, 440Hz) == distance(440Hz, 880Hz)`.
- Perfect Interval: Two notes with perfect interval sounds most consonant/harmonious together. Because **harmony comes from alignment in waveforms**, `(nHz, knHz) where k >= 1` are considered the most perfect.
- Octave / Perfect octave / 8ve: The interval between a base note and one with doubled frequency. It is the most commonly used measuring unit of interval, because 2 is the smallest perfect interval.

A group of sounds:

- Temperament: Procedural method to subdivide an octave (grid) into notes. Since 18th century, western music employs twelve-tone equal temperament (12-TET), which equally divides an octave into 12 notes, i.e. `Note(n) = sqrt[n/12](2) * Note(0)`.
> Before the mathematical tool to deal with irrational number was in place, people sought to deduce notes base on the next most hamonious sound, `3n/2Hz`. In those systems, intervals between notes aren't equal, and therefore it's often impossible to variate a melody by changing the base note of its scale (because the physical interval pattern is changed and the melody sounds off).  See [Pythagorean tuning](https://en.wikipedia.org/wiki/Pythagorean_tuning) or [十二律](https://zh.wikipedia.org/zh-hans/%E5%8D%81%E4%BA%8C%E5%BE%8B) for more details.
- Scale: A selection of notes from an arbitary octave. Usually it's defined as a base note and an interval pattern for subsequent notes, where the base note is not bound to any specific octave. The interval pattern count equals the count of notes inside one octave, because the harmony between them and the base note of a higher octave must also be considered. Scales with the same interval pattern sounds similar even with different base notes, and they are named as one family, e.g. C major scale in major scale family.
- Chromatic scale: twelve-tone equal temperament
- Semitone / Half step: Interval from chromatic scale.
- Whole tone / Whole step:
- Letter denotation: C-D-E-F-G-A-B, sharp sign, flat sign.
- Enharmonic: The phenomenon where two different letter notes refer to the same sound.
- Chord: A harmonic set of notes that is played simultaneously.

### Studying the Major Scale

- Family relationships

Heptatonic scale: it has seven notes per octave

Diatonic scale: Heptatonic scale & the interval pattern consists of 5 whole steps and 2 half steps & the 2 half steps are placed evenly (each half step are maximally separated). There are 7 interval patterns in total that belongs to diatonic scale, two of them are heavily used.

- Naming the notes

We use scale degree to identify a particular note in a scale. Mostly we number the starting note (base note) as 1.

More specifically, we have aliases for notes in diatonic scale family. The first note is called tonic. One whole step below tonic (minor 7th) is called subtonic. One half step below tonic (major 7th) is called leading tone. The 5th note is called dominant. The inverse of dominant (major 4th) is subdominant.

- Naming the intervals and chords

Major Scale can be decomposed into smaller "atomic" parts of intervals and chords.

For intervals, we have Major 2nd, 3rd, 6th and 7th; perfect 4th and 5th.

For chords, we first have Major Triad (2 whole steps + 3 half steps) and Minor Triad (3 half steps + 2 whole steps). The I/Tonic Chord (C+E+G), IV/Subdominant Chord (F+A+C), V/Dominant Chord (G+B+D) are three instances of Major Triad inside C Major Scale.

Also there are Major 7th Chord (Major Triad + Major 7th) and Dominant 7th Chord (Major Triad + Minor 7th).

### Other important scales

- Minor Pentatonic Scale (C + D# + F + G + A#)

### Manipulating Scale

- Transposition
- Inversion
- Voicing

## Song

### Essential Concepts

- Form: Overall structure of a song
- Bar/Measure
- Time signature: The numerator specifies the length of a bar in beat. The denominator specifies how many notes there is in a bar.
- Key signature

### Resources

- [Learning Music - Ableton](https://learningmusic.ableton.com/index.html)(⭐⭐⭐⭐)
- [Learning Synths - Ableton](https://learningsynths.ableton.com/)
- [Music Theory for Musicians and Normal People](https://tobyrush.com/theorypages/index.html)(⭐⭐⭐⭐)
  - https://news.ycombinator.com/item?id=21297462
- [Learn Piano By Chords](http://www.pianobychords.com/)(⭐⭐⭐)
- [Music Theory for Nerds](https://eev.ee/blog/2016/09/15/music-theory-for-nerds/)(⭐⭐⭐)
- [为什么中国古代音乐只有宫商角徵羽五音，而西方是 Do-Re-Mi-Fa-Sol-La-Si 七音？](https://www.zhihu.com/question/20417721/answer/361923555)(⭐⭐⭐⭐)
- [写给理工科人看的乐理（一）声学基础](https://zhuanlan.zhihu.com/p/395134247)
- [Coursera - Musicianship Specialization by Berklee College of Music](https://www.coursera.org/specializations/musicianship-specialization)(⭐⭐⭐)
- [乐理知识讲重点第一课（音程）](https://zhuanlan.zhihu.com/p/23039640)
- [Music Theory: An Education from First Principles](https://news.ycombinator.com/item?id=12792063)
- [Ask HN: How Can I Learn Music Theory?](https://news.ycombinator.com/item?id=21822225)
- [Why 12 notes in Western music?](https://news.ycombinator.com/item?id=32639000)
- [Did Bach “invent” the rules of music theory?](https://news.ycombinator.com/item?id=32498906)
- [Toward a Better Music Theory (2013)](https://news.ycombinator.com/item?id=32343829)
- [Interactive Music Theory Cheat Sheet](https://news.ycombinator.com/item?id=34387982)
