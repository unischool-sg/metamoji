.class public final Landroidx/media3/extractor/metadata/id3/Id3Util;
.super Ljava/lang/Object;
.source "Id3Util.java"


# static fields
.field private static final STANDARD_GENRES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0xb4

    .line 26
    new-array v13, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Other"

    aput-object v1, v13, v0

    const/4 v0, 0x1

    const-string v1, "Pop"

    aput-object v1, v13, v0

    const/4 v0, 0x2

    const-string v1, "R&B"

    aput-object v1, v13, v0

    const/4 v0, 0x3

    const-string v1, "Rap"

    aput-object v1, v13, v0

    const/4 v0, 0x4

    const-string v1, "Reggae"

    aput-object v1, v13, v0

    const/4 v0, 0x5

    const-string v1, "Rock"

    aput-object v1, v13, v0

    const/4 v0, 0x6

    const-string v1, "Techno"

    aput-object v1, v13, v0

    const/4 v0, 0x7

    const-string v1, "Industrial"

    aput-object v1, v13, v0

    const/16 v0, 0x8

    const-string v1, "Alternative"

    aput-object v1, v13, v0

    const/16 v0, 0x9

    const-string v1, "Ska"

    aput-object v1, v13, v0

    const/16 v0, 0xa

    const-string v1, "Death Metal"

    aput-object v1, v13, v0

    const/16 v0, 0xb

    const-string v1, "Pranks"

    aput-object v1, v13, v0

    const/16 v0, 0xc

    const-string v1, "Soundtrack"

    aput-object v1, v13, v0

    const/16 v0, 0xd

    const-string v1, "Euro-Techno"

    aput-object v1, v13, v0

    const/16 v0, 0xe

    const-string v1, "Ambient"

    aput-object v1, v13, v0

    const/16 v0, 0xf

    const-string v1, "Trip-Hop"

    aput-object v1, v13, v0

    const/16 v0, 0x10

    const-string v1, "Vocal"

    aput-object v1, v13, v0

    const/16 v0, 0x11

    const-string v1, "Jazz+Funk"

    aput-object v1, v13, v0

    const/16 v0, 0x12

    const-string v1, "Fusion"

    aput-object v1, v13, v0

    const/16 v0, 0x13

    const-string v1, "Trance"

    aput-object v1, v13, v0

    const/16 v0, 0x14

    const-string v1, "Classical"

    aput-object v1, v13, v0

    const/16 v0, 0x15

    const-string v1, "Instrumental"

    aput-object v1, v13, v0

    const/16 v0, 0x16

    const-string v1, "Acid"

    aput-object v1, v13, v0

    const/16 v0, 0x17

    const-string v1, "House"

    aput-object v1, v13, v0

    const/16 v0, 0x18

    const-string v1, "Game"

    aput-object v1, v13, v0

    const/16 v0, 0x19

    const-string v1, "Sound Clip"

    aput-object v1, v13, v0

    const/16 v0, 0x1a

    const-string v1, "Gospel"

    aput-object v1, v13, v0

    const/16 v0, 0x1b

    const-string v1, "Noise"

    aput-object v1, v13, v0

    const/16 v0, 0x1c

    const-string v1, "AlternRock"

    aput-object v1, v13, v0

    const/16 v0, 0x1d

    const-string v1, "Bass"

    aput-object v1, v13, v0

    const/16 v0, 0x1e

    const-string v1, "Soul"

    aput-object v1, v13, v0

    const/16 v0, 0x1f

    const-string v1, "Punk"

    aput-object v1, v13, v0

    const/16 v0, 0x20

    const-string v1, "Space"

    aput-object v1, v13, v0

    const/16 v0, 0x21

    const-string v1, "Meditative"

    aput-object v1, v13, v0

    const/16 v0, 0x22

    const-string v1, "Instrumental Pop"

    aput-object v1, v13, v0

    const/16 v0, 0x23

    const-string v1, "Instrumental Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x24

    const-string v1, "Ethnic"

    aput-object v1, v13, v0

    const/16 v0, 0x25

    const-string v1, "Gothic"

    aput-object v1, v13, v0

    const/16 v0, 0x26

    const-string v1, "Darkwave"

    aput-object v1, v13, v0

    const/16 v0, 0x27

    const-string v1, "Techno-Industrial"

    aput-object v1, v13, v0

    const/16 v0, 0x28

    const-string v1, "Electronic"

    aput-object v1, v13, v0

    const/16 v0, 0x29

    const-string v1, "Pop-Folk"

    aput-object v1, v13, v0

    const/16 v0, 0x2a

    const-string v1, "Eurodance"

    aput-object v1, v13, v0

    const/16 v0, 0x2b

    const-string v1, "Dream"

    aput-object v1, v13, v0

    const/16 v0, 0x2c

    const-string v1, "Southern Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x2d

    const-string v1, "Comedy"

    aput-object v1, v13, v0

    const/16 v0, 0x2e

    const-string v1, "Cult"

    aput-object v1, v13, v0

    const/16 v0, 0x2f

    const-string v1, "Gangsta"

    aput-object v1, v13, v0

    const/16 v0, 0x30

    const-string v1, "Top 40"

    aput-object v1, v13, v0

    const/16 v0, 0x31

    const-string v1, "Christian Rap"

    aput-object v1, v13, v0

    const/16 v0, 0x32

    const-string v1, "Pop/Funk"

    aput-object v1, v13, v0

    const/16 v0, 0x33

    const-string v1, "Jungle"

    aput-object v1, v13, v0

    const/16 v0, 0x34

    const-string v1, "Native American"

    aput-object v1, v13, v0

    const/16 v0, 0x35

    const-string v1, "Cabaret"

    aput-object v1, v13, v0

    const/16 v0, 0x36

    const-string v1, "New Wave"

    aput-object v1, v13, v0

    const/16 v0, 0x37

    const-string v1, "Psychadelic"

    aput-object v1, v13, v0

    const/16 v0, 0x38

    const-string v1, "Rave"

    aput-object v1, v13, v0

    const/16 v0, 0x39

    const-string v1, "Showtunes"

    aput-object v1, v13, v0

    const/16 v0, 0x3a

    const-string v1, "Trailer"

    aput-object v1, v13, v0

    const/16 v0, 0x3b

    const-string v1, "Lo-Fi"

    aput-object v1, v13, v0

    const/16 v0, 0x3c

    const-string v1, "Tribal"

    aput-object v1, v13, v0

    const/16 v0, 0x3d

    const-string v1, "Acid Punk"

    aput-object v1, v13, v0

    const/16 v0, 0x3e

    const-string v1, "Acid Jazz"

    aput-object v1, v13, v0

    const/16 v0, 0x3f

    const-string v1, "Polka"

    aput-object v1, v13, v0

    const/16 v0, 0x40

    const-string v1, "Retro"

    aput-object v1, v13, v0

    const/16 v0, 0x41

    const-string v1, "Musical"

    aput-object v1, v13, v0

    const/16 v0, 0x42

    const-string v1, "Rock & Roll"

    aput-object v1, v13, v0

    const/16 v0, 0x43

    const-string v1, "Hard Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x44

    const-string v1, "Folk"

    aput-object v1, v13, v0

    const/16 v0, 0x45

    const-string v1, "Folk-Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x46

    const-string v1, "National Folk"

    aput-object v1, v13, v0

    const/16 v0, 0x47

    const-string v1, "Swing"

    aput-object v1, v13, v0

    const/16 v0, 0x48

    const-string v1, "Fast Fusion"

    aput-object v1, v13, v0

    const/16 v0, 0x49

    const-string v1, "Bebob"

    aput-object v1, v13, v0

    const/16 v0, 0x4a

    const-string v1, "Latin"

    aput-object v1, v13, v0

    const/16 v0, 0x4b

    const-string v1, "Revival"

    aput-object v1, v13, v0

    const/16 v0, 0x4c

    const-string v1, "Celtic"

    aput-object v1, v13, v0

    const/16 v0, 0x4d

    const-string v1, "Bluegrass"

    aput-object v1, v13, v0

    const/16 v0, 0x4e

    const-string v1, "Avantgarde"

    aput-object v1, v13, v0

    const/16 v0, 0x4f

    const-string v1, "Gothic Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x50

    const-string v1, "Progressive Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x51

    const-string v1, "Psychedelic Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x52

    const-string v1, "Symphonic Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x53

    const-string v1, "Slow Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x54

    const-string v1, "Big Band"

    aput-object v1, v13, v0

    const/16 v0, 0x55

    const-string v1, "Chorus"

    aput-object v1, v13, v0

    const/16 v0, 0x56

    const-string v1, "Easy Listening"

    aput-object v1, v13, v0

    const/16 v0, 0x57

    const-string v1, "Acoustic"

    aput-object v1, v13, v0

    const/16 v0, 0x58

    const-string v1, "Humour"

    aput-object v1, v13, v0

    const/16 v0, 0x59

    const-string v1, "Speech"

    aput-object v1, v13, v0

    const/16 v0, 0x5a

    const-string v1, "Chanson"

    aput-object v1, v13, v0

    const/16 v0, 0x5b

    const-string v1, "Opera"

    aput-object v1, v13, v0

    const/16 v0, 0x5c

    const-string v1, "Chamber Music"

    aput-object v1, v13, v0

    const/16 v0, 0x5d

    const-string v1, "Sonata"

    aput-object v1, v13, v0

    const/16 v0, 0x5e

    const-string v1, "Symphony"

    aput-object v1, v13, v0

    const/16 v0, 0x5f

    const-string v1, "Booty Bass"

    aput-object v1, v13, v0

    const/16 v0, 0x60

    const-string v1, "Primus"

    aput-object v1, v13, v0

    const/16 v0, 0x61

    const-string v1, "Porn Groove"

    aput-object v1, v13, v0

    const/16 v0, 0x62

    const-string v1, "Satire"

    aput-object v1, v13, v0

    const/16 v0, 0x63

    const-string v1, "Slow Jam"

    aput-object v1, v13, v0

    const/16 v0, 0x64

    const-string v1, "Club"

    aput-object v1, v13, v0

    const/16 v0, 0x65

    const-string v1, "Tango"

    aput-object v1, v13, v0

    const/16 v0, 0x66

    const-string v1, "Samba"

    aput-object v1, v13, v0

    const/16 v0, 0x67

    const-string v1, "Folklore"

    aput-object v1, v13, v0

    const/16 v0, 0x68

    const-string v1, "Ballad"

    aput-object v1, v13, v0

    const/16 v0, 0x69

    const-string v1, "Power Ballad"

    aput-object v1, v13, v0

    const/16 v0, 0x6a

    const-string v1, "Rhythmic Soul"

    aput-object v1, v13, v0

    const/16 v0, 0x6b

    const-string v1, "Freestyle"

    aput-object v1, v13, v0

    const/16 v0, 0x6c

    const-string v1, "Duet"

    aput-object v1, v13, v0

    const/16 v0, 0x6d

    const-string v1, "Punk Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x6e

    const-string v1, "Drum Solo"

    aput-object v1, v13, v0

    const/16 v0, 0x6f

    const-string v1, "A capella"

    aput-object v1, v13, v0

    const/16 v0, 0x70

    const-string v1, "Euro-House"

    aput-object v1, v13, v0

    const/16 v0, 0x71

    const-string v1, "Dance Hall"

    aput-object v1, v13, v0

    const/16 v0, 0x72

    const-string v1, "Goa"

    aput-object v1, v13, v0

    const/16 v0, 0x73

    const-string v1, "Drum & Bass"

    aput-object v1, v13, v0

    const/16 v0, 0x74

    const-string v1, "Club-House"

    aput-object v1, v13, v0

    const/16 v0, 0x75

    const-string v1, "Hardcore"

    aput-object v1, v13, v0

    const/16 v0, 0x76

    const-string v1, "Terror"

    aput-object v1, v13, v0

    const/16 v0, 0x77

    const-string v1, "Indie"

    aput-object v1, v13, v0

    const/16 v0, 0x78

    const-string v1, "BritPop"

    aput-object v1, v13, v0

    const/16 v0, 0x79

    const-string v1, "Afro-Punk"

    aput-object v1, v13, v0

    const/16 v0, 0x7a

    const-string v1, "Polsk Punk"

    aput-object v1, v13, v0

    const/16 v0, 0x7b

    const-string v1, "Beat"

    aput-object v1, v13, v0

    const/16 v0, 0x7c

    const-string v1, "Christian Gangsta Rap"

    aput-object v1, v13, v0

    const/16 v0, 0x7d

    const-string v1, "Heavy Metal"

    aput-object v1, v13, v0

    const/16 v0, 0x7e

    const-string v1, "Black Metal"

    aput-object v1, v13, v0

    const/16 v0, 0x7f

    const-string v1, "Crossover"

    aput-object v1, v13, v0

    const/16 v0, 0x80

    const-string v1, "Contemporary Christian"

    aput-object v1, v13, v0

    const/16 v0, 0x81

    const-string v1, "Christian Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x82

    const-string v1, "Merengue"

    aput-object v1, v13, v0

    const/16 v0, 0x83

    const-string v1, "Salsa"

    aput-object v1, v13, v0

    const/16 v0, 0x84

    const-string v1, "Thrash Metal"

    aput-object v1, v13, v0

    const/16 v0, 0x85

    const-string v1, "Anime"

    aput-object v1, v13, v0

    const/16 v0, 0x86

    const-string v1, "Jpop"

    aput-object v1, v13, v0

    const/16 v0, 0x87

    const-string v1, "Synthpop"

    aput-object v1, v13, v0

    const/16 v0, 0x88

    const-string v1, "Abstract"

    aput-object v1, v13, v0

    const/16 v0, 0x89

    const-string v1, "Art Rock"

    aput-object v1, v13, v0

    const/16 v0, 0x8a

    const-string v1, "Baroque"

    aput-object v1, v13, v0

    const/16 v0, 0x8b

    const-string v1, "Bhangra"

    aput-object v1, v13, v0

    const/16 v0, 0x8c

    const-string v1, "Big beat"

    aput-object v1, v13, v0

    const/16 v0, 0x8d

    const-string v1, "Breakbeat"

    aput-object v1, v13, v0

    const/16 v0, 0x8e

    const-string v1, "Chillout"

    aput-object v1, v13, v0

    const/16 v0, 0x8f

    const-string v1, "Downtempo"

    aput-object v1, v13, v0

    const/16 v0, 0x90

    const-string v1, "Dub"

    aput-object v1, v13, v0

    const/16 v0, 0x91

    const-string v1, "EBM"

    aput-object v1, v13, v0

    const/16 v0, 0x92

    const-string v1, "Eclectic"

    aput-object v1, v13, v0

    const/16 v0, 0x93

    const-string v1, "Electro"

    aput-object v1, v13, v0

    const/16 v0, 0x94

    const-string v1, "Electroclash"

    aput-object v1, v13, v0

    const/16 v0, 0x95

    const-string v1, "Emo"

    aput-object v1, v13, v0

    const/16 v0, 0x96

    const-string v1, "Experimental"

    aput-object v1, v13, v0

    const/16 v0, 0x97

    const-string v1, "Garage"

    aput-object v1, v13, v0

    const/16 v0, 0x98

    const-string v1, "Global"

    aput-object v1, v13, v0

    const/16 v0, 0x99

    const-string v1, "IDM"

    aput-object v1, v13, v0

    const/16 v0, 0x9a

    const-string v1, "Illbient"

    aput-object v1, v13, v0

    const/16 v0, 0x9b

    const-string v1, "Industro-Goth"

    aput-object v1, v13, v0

    const/16 v0, 0x9c

    const-string v1, "Jam Band"

    aput-object v1, v13, v0

    const/16 v0, 0x9d

    const-string v1, "Krautrock"

    aput-object v1, v13, v0

    const/16 v0, 0x9e

    const-string v1, "Leftfield"

    aput-object v1, v13, v0

    const/16 v0, 0x9f

    const-string v1, "Lounge"

    aput-object v1, v13, v0

    const/16 v0, 0xa0

    const-string v1, "Math Rock"

    aput-object v1, v13, v0

    const/16 v0, 0xa1

    const-string v1, "New Romantic"

    aput-object v1, v13, v0

    const/16 v0, 0xa2

    const-string v1, "Nu-Breakz"

    aput-object v1, v13, v0

    const/16 v0, 0xa3

    const-string v1, "Post-Punk"

    aput-object v1, v13, v0

    const/16 v0, 0xa4

    const-string v1, "Post-Rock"

    aput-object v1, v13, v0

    const/16 v0, 0xa5

    const-string v1, "Psytrance"

    aput-object v1, v13, v0

    const/16 v0, 0xa6

    const-string v1, "Shoegaze"

    aput-object v1, v13, v0

    const/16 v0, 0xa7

    const-string v1, "Space Rock"

    aput-object v1, v13, v0

    const/16 v0, 0xa8

    const-string v1, "Trop Rock"

    aput-object v1, v13, v0

    const/16 v0, 0xa9

    const-string v1, "World Music"

    aput-object v1, v13, v0

    const/16 v0, 0xaa

    const-string v1, "Neoclassical"

    aput-object v1, v13, v0

    const/16 v0, 0xab

    const-string v1, "Audiobook"

    aput-object v1, v13, v0

    const/16 v0, 0xac

    const-string v1, "Audio theatre"

    aput-object v1, v13, v0

    const/16 v0, 0xad

    const-string v1, "Neue Deutsche Welle"

    aput-object v1, v13, v0

    const/16 v0, 0xae

    const-string v1, "Podcast"

    aput-object v1, v13, v0

    const/16 v0, 0xaf

    const-string v1, "Indie-Rock"

    aput-object v1, v13, v0

    const/16 v0, 0xb0

    const-string v1, "G-Funk"

    aput-object v1, v13, v0

    const/16 v0, 0xb1

    const-string v1, "Dubstep"

    aput-object v1, v13, v0

    const/16 v0, 0xb2

    const-string v1, "Garage Rock"

    aput-object v1, v13, v0

    const/16 v0, 0xb3

    const-string v1, "Psybient"

    aput-object v1, v13, v0

    .line 27
    const-string v1, "Blues"

    const-string v2, "Classic Rock"

    const-string v3, "Country"

    const-string v4, "Dance"

    const-string v5, "Disco"

    const-string v6, "Funk"

    const-string v7, "Grunge"

    const-string v8, "Hip-Hop"

    const-string v9, "Jazz"

    const-string v10, "Metal"

    const-string v11, "New Age"

    const-string v12, "Oldies"

    invoke-static/range {v1 .. v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/metadata/id3/Id3Util;->STANDARD_GENRES:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveV1Genre(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 236
    sget-object v0, Landroidx/media3/extractor/metadata/id3/Id3Util;->STANDARD_GENRES:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 237
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
