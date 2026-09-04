.class public Lcom/metamoji/mazecapi/StrokesAndStyles;
.super Ljava/lang/Object;
.source "StrokesAndStyles.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/mazecapi/StrokesAndStyles;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_VER_1ST:I = 0x0

.field private static final DATA_VER_2ND:I = 0x1

.field private static final DATA_VER_CUR:I = 0x1

.field private static final ID_FIRST:I = 0x1

.field private static final ID_NULL:I


# instance fields
.field private _dataVer:I

.field private _inks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;"
        }
    .end annotation
.end field

.field private _penInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _strokesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazecapi/Strokes;",
            ">;"
        }
    .end annotation
.end field

.field private _styles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/metamoji/mazecapi/StrokesAndStyles$1;

    invoke-direct {v0}, Lcom/metamoji/mazecapi/StrokesAndStyles$1;-><init>()V

    sput-object v0, Lcom/metamoji/mazecapi/StrokesAndStyles;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    :cond_0
    return-void
.end method

.method public constructor <init>(ILcom/metamoji/mazecapi/Strokes;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;-><init>(I)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/metamoji/mazecapi/StrokesAndStyles;->setStrokes(Lcom/metamoji/mazecapi/Strokes;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecapi/Strokes;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;-><init>(I)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/metamoji/mazecapi/StrokesAndStyles;->setStrokesList(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    if-lt v0, v1, :cond_1

    .line 80
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readPenInfos(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object v0

    .line 81
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readInks(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object v1

    .line 82
    invoke-direct {p0, p1, v1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readStyles(Landroid/os/Parcel;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 85
    iget-object v4, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    invoke-direct {p0, p1, v1, v0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readStrokes(Landroid/os/Parcel;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/metamoji/mazecapi/Strokes;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid data"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/mazecapi/StrokesAndStyles-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazecapi/Strokes;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    .line 56
    invoke-virtual {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->setStrokes(Lcom/metamoji/mazecapi/Strokes;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecapi/Strokes;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    .line 65
    invoke-virtual {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->setStrokesList(Ljava/util/List;)V

    return-void
.end method

.method private readAttrs(Landroid/os/Parcel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 503
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private readFountainProps(Landroid/os/Parcel;)Lcom/metamoji/mazecapi/StrokeFountainProperties;
    .locals 39

    .line 366
    new-instance v0, Lcom/metamoji/mazecapi/StrokeFountainProperties;

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v13

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v23

    .line 379
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v25

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v27

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v29

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v31

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v33

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v35

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v37

    invoke-direct/range {v0 .. v38}, Lcom/metamoji/mazecapi/StrokeFountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    return-object v0
.end method

.method private readInk(Landroid/os/Parcel;)Lcom/metamoji/mazecapi/StrokeInk;
    .locals 2

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 244
    new-instance v1, Lcom/metamoji/mazecapi/StrokeInk;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/mazecapi/StrokeInk;-><init>(I[I)V

    return-object v1
.end method

.method private readInks(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 229
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readInk(Landroid/os/Parcel;)Lcom/metamoji/mazecapi/StrokeInk;

    move-result-object v4

    .line 230
    iget-object v5, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readPenInfo(Landroid/os/Parcel;)Lcom/metamoji/mazecapi/StrokePenInfo;
    .locals 2

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 207
    new-instance v1, Lcom/metamoji/mazecapi/StrokePenInfo;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/mazecapi/StrokePenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private readPenInfos(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 192
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readPenInfo(Landroid/os/Parcel;)Lcom/metamoji/mazecapi/StrokePenInfo;

    move-result-object v4

    .line 193
    iget-object v5, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readPoints(Landroid/os/Parcel;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 478
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private readStroke(Landroid/os/Parcel;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/metamoji/mazecapi/Stroke;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecapi/Stroke;"
        }
    .end annotation

    .line 437
    new-instance v0, Lcom/metamoji/mazecapi/Stroke;

    invoke-direct {v0}, Lcom/metamoji/mazecapi/Stroke;-><init>()V

    .line 440
    iget v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    .line 443
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readPoints(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    move v5, v2

    move-wide v7, v3

    move-object v3, v1

    move-wide v1, v7

    .line 444
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readAttrs(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v4

    .line 446
    iget v6, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    if-lt v6, v5, :cond_1

    .line 447
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readAttrs(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 449
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/mazecapi/Stroke;->setPoints(DLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazecapi/StrokeStyle;

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/Stroke;->setStyle(Lcom/metamoji/mazecapi/StrokeStyle;)V

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 456
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazecapi/StrokePenInfo;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazecapi/Stroke;->setPenInfo(Lcom/metamoji/mazecapi/StrokePenInfo;)V

    :cond_2
    return-object v0
.end method

.method private readStrokes(Landroid/os/Parcel;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/metamoji/mazecapi/Strokes;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecapi/Strokes;"
        }
    .end annotation

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 402
    new-instance v2, Lcom/metamoji/mazecapi/Strokes;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/mazecapi/Strokes;-><init>(FF)V

    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 405
    invoke-virtual {v2, v0}, Lcom/metamoji/mazecapi/Strokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 409
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readStroke(Landroid/os/Parcel;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/metamoji/mazecapi/Stroke;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/mazecapi/Strokes;->addStroke(Lcom/metamoji/mazecapi/Stroke;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private readStyle(Landroid/os/Parcel;Landroid/util/SparseArray;)Lcom/metamoji/mazecapi/StrokeStyle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;)",
            "Lcom/metamoji/mazecapi/StrokeStyle;"
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/metamoji/mazecapi/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazecapi/StrokeStyle;-><init>()V

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    invoke-virtual {v0, v1}, Lcom/metamoji/mazecapi/StrokeStyle;->setPenType(I)V

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazecapi/StrokeInk;

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setInk(Lcom/metamoji/mazecapi/StrokeInk;)V

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setLineColor(I)V

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setLineWidthRatio(F)V

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-lez p2, :cond_1

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p2

    .line 324
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 325
    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setLineDash([F)V

    :cond_1
    const/4 p2, 0x3

    if-eq v1, p2, :cond_3

    const/4 p2, 0x4

    if-eq v1, p2, :cond_2

    return-object v0

    .line 336
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readFountainProps(Landroid/os/Parcel;)Lcom/metamoji/mazecapi/StrokeFountainProperties;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazecapi/StrokeStyle;->setFountainProperties(Lcom/metamoji/mazecapi/StrokeFountainProperties;)V

    return-object v0

    .line 330
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setCalliAngle(F)V

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setCalliRate(F)V

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazecapi/StrokeStyle;->setCalliPaintType(I)V

    return-object v0
.end method

.method private readStyles(Landroid/os/Parcel;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazecapi/StrokesAndStyles;->readStyle(Landroid/os/Parcel;Landroid/util/SparseArray;)Lcom/metamoji/mazecapi/StrokeStyle;

    move-result-object v4

    .line 266
    iget-object v5, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private scanInk(Lcom/metamoji/mazecapi/StrokeInk;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private scanPenInfo(Lcom/metamoji/mazecapi/StrokePenInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private scanStroke(Lcom/metamoji/mazecapi/Stroke;)V
    .locals 1

    .line 134
    invoke-virtual {p1}, Lcom/metamoji/mazecapi/Stroke;->getStyle()Lcom/metamoji/mazecapi/StrokeStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->scanStyle(Lcom/metamoji/mazecapi/StrokeStyle;)V

    .line 135
    invoke-virtual {p1}, Lcom/metamoji/mazecapi/Stroke;->getPenInfo()Lcom/metamoji/mazecapi/StrokePenInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->scanPenInfo(Lcom/metamoji/mazecapi/StrokePenInfo;)V

    return-void
.end method

.method private scanStrokes(Lcom/metamoji/mazecapi/Strokes;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Lcom/metamoji/mazecapi/Strokes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecapi/Stroke;

    .line 129
    invoke-direct {p0, v0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->scanStroke(Lcom/metamoji/mazecapi/Stroke;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private scanStyle(Lcom/metamoji/mazecapi/StrokeStyle;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p1}, Lcom/metamoji/mazecapi/StrokeStyle;->getInk()Lcom/metamoji/mazecapi/StrokeInk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->scanInk(Lcom/metamoji/mazecapi/StrokeInk;)V

    return-void
.end method

.method private writeAttrs(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 488
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 490
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_1

    .line 492
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 493
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeFountainProps(Landroid/os/Parcel;Lcom/metamoji/mazecapi/StrokeFountainProperties;)V
    .locals 2

    .line 344
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTrans()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 345
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginStay()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 346
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginStayRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 347
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginStayDelta()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 348
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginRun()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 349
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginRunRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 350
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginRunDelta()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 351
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndStay()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 352
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndStayRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 353
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndStayDelta()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 354
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndRun()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 355
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndRunRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 356
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndRunDelta()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 357
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailStay()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 358
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailStayRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 359
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailStayDelta()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 360
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailRun()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 361
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailRunRate()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 362
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailRunDelta()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method private writeInk(Landroid/os/Parcel;Lcom/metamoji/mazecapi/StrokeInk;)V
    .locals 1

    .line 237
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeInk;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokeInk;->getColors()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

.method private writeInks(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazecapi/StrokeInk;

    .line 216
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-direct {p0, p1, v4}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writeInk(Landroid/os/Parcel;Lcom/metamoji/mazecapi/StrokeInk;)V

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private writePenInfo(Landroid/os/Parcel;Lcom/metamoji/mazecapi/StrokePenInfo;)V
    .locals 1

    .line 200
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokePenInfo;->getPenID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/StrokePenInfo;->getInkID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method private writePenInfos(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazecapi/StrokePenInfo;

    .line 179
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-direct {p0, p1, v4}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writePenInfo(Landroid/os/Parcel;Lcom/metamoji/mazecapi/StrokePenInfo;)V

    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private writePoints(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 464
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 465
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 467
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 468
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeStroke(Landroid/os/Parcel;Lcom/metamoji/mazecapi/Stroke;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Lcom/metamoji/mazecapi/Stroke;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 416
    iget v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 417
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/Stroke;->getDelta()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 419
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/Stroke;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writePoints(Landroid/os/Parcel;Ljava/util/List;)V

    .line 420
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/Stroke;->getSegmentAttr()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writeAttrs(Landroid/os/Parcel;Ljava/util/List;)V

    .line 421
    iget v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    if-lt v0, v1, :cond_1

    .line 422
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/Stroke;->getPenAttr()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writeAttrs(Landroid/os/Parcel;Ljava/util/List;)V

    .line 425
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/Stroke;->getStyle()Lcom/metamoji/mazecapi/StrokeStyle;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 426
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    invoke-virtual {p2}, Lcom/metamoji/mazecapi/Stroke;->getPenInfo()Lcom/metamoji/mazecapi/StrokePenInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 430
    invoke-interface {p4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 431
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 433
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private writeStrokes(Landroid/os/Parcel;ILcom/metamoji/mazecapi/Strokes;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Lcom/metamoji/mazecapi/Strokes;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 390
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/Strokes;->getTopLine()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 391
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/Strokes;->getBaseLine()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 392
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/Strokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 393
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/Strokes;->getStrokeCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/Strokes;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/mazecapi/Stroke;

    .line 395
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writeStroke(Landroid/os/Parcel;Lcom/metamoji/mazecapi/Stroke;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeStyle(Landroid/os/Parcel;Ljava/util/Map;Lcom/metamoji/mazecapi/StrokeStyle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ")V"
        }
    .end annotation

    .line 273
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/StrokeStyle;->getPenType()I

    move-result v0

    .line 274
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/StrokeStyle;->getInk()Lcom/metamoji/mazecapi/StrokeInk;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    .line 281
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineWidthRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 286
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineDash()[F

    move-result-object p2

    if-eqz p2, :cond_2

    .line 287
    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 290
    :cond_1
    array-length v1, p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_2

    .line 288
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    const/4 p2, 0x3

    if-eq v0, p2, :cond_4

    const/4 p2, 0x4

    if-eq v0, p2, :cond_3

    return-void

    .line 302
    :cond_3
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/StrokeStyle;->getFountainProperties()Lcom/metamoji/mazecapi/StrokeFountainProperties;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writeFountainProps(Landroid/os/Parcel;Lcom/metamoji/mazecapi/StrokeFountainProperties;)V

    return-void

    .line 296
    :cond_4
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/StrokeStyle;->getCalliAngle()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 297
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/StrokeStyle;->getCalliRate()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 298
    invoke-virtual {p3}, Lcom/metamoji/mazecapi/StrokeStyle;->getCalliPaintType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private writeStyles(Landroid/os/Parcel;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazecapi/StrokeStyle;

    .line 252
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-direct {p0, p1, p2, v4}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writeStyle(Landroid/os/Parcel;Ljava/util/Map;Lcom/metamoji/mazecapi/StrokeStyle;)V

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 92
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 93
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_inks:Ljava/util/Set;

    return-object v0
.end method

.method public getPenInfos()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_penInfos:Ljava/util/Set;

    return-object v0
.end method

.method public getStrokesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecapi/Strokes;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    return-object v0
.end method

.method public getStyles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_styles:Ljava/util/Set;

    return-object v0
.end method

.method public setStrokes(Lcom/metamoji/mazecapi/Strokes;)V
    .locals 1

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0, v0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->setStrokesList(Ljava/util/List;)V

    return-void
.end method

.method public setStrokesList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecapi/Strokes;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->clear()V

    .line 103
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object p1, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecapi/Strokes;

    .line 105
    invoke-direct {p0, v0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->scanStrokes(Lcom/metamoji/mazecapi/Strokes;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 162
    iget v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_dataVer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writePenInfos(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v6

    .line 165
    invoke-direct {p0, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writeInks(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writeStyles(Landroid/os/Parcel;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 168
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokesAndStyles;->_strokesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/metamoji/mazecapi/Strokes;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 170
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/mazecapi/StrokesAndStyles;->writeStrokes(Landroid/os/Parcel;ILcom/metamoji/mazecapi/Strokes;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method
