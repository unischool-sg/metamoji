.class public Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;
.super Ljava/lang/Object;
.source "MMJHandwriteStroke.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;,
        Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRANULARITY_FDI_HIGH:I = 0x12

.field public static final GRANULARITY_RAW:I = 0x0

.field public static final LINEWIDTHTYPE_BOLD:I = 0x3

.field public static final LINEWIDTHTYPE_NORMAL:I = 0x0

.field public static final LINEWIDTHTYPE_SEMIBOLD:I = 0x2

.field public static final LINEWIDTHTYPE_THIN:I = 0x1

.field private static final REDUCE_METHOD_FDI:I = 0x10

.field private static final STROKE_POINT_MAX:I = 0x2710

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mBounds:Landroid/graphics/RectF;

.field private mColor:I

.field private mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

.field private mIsReduced:Z

.field private mLineWidthType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

.field private transient mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 322
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$1;

    invoke-direct {v0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$1;-><init>()V

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 106
    sget-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->NORMAL:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    sget-object v1, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->RAW:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    const/high16 v2, -0x1000000

    invoke-direct {p0, v2, v0, v1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;-><init>(ILcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;)V

    return-void
.end method

.method public constructor <init>(ILcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mLineWidthType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    .line 112
    iput p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mColor:I

    .line 113
    iput-object p3, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    .line 115
    sget-object p1, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->RAW:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    if-eq p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mIsReduced:Z

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    .line 118
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    .line 303
    new-array v2, v2, [F

    .line 304
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_0

    .line 307
    new-instance v6, Landroid/graphics/PointF;

    add-int/lit8 v7, v5, 0x1

    aget v8, v2, v5

    add-int/lit8 v5, v5, 0x2

    aget v7, v2, v7

    invoke-direct {v6, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 308
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 311
    :cond_0
    iput-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    .line 312
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mColor:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->createByValue(I)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    move-result-object v0

    iput-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mLineWidthType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->createByValue(I)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    move-result-object v0

    iput-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v3, v0

    :cond_1
    iput-boolean v3, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mIsReduced:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 139
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 142
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 143
    invoke-static {p1, v2}, Lcom/sevenknowledge/common/SerializableUtil;->readPointF(Ljava/io/ObjectInputStream;Landroid/graphics/PointF;)V

    .line 144
    iget-object v3, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    .line 148
    invoke-static {p1, v0}, Lcom/sevenknowledge/common/SerializableUtil;->readRectF(Ljava/io/ObjectInputStream;Landroid/graphics/RectF;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 128
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 130
    invoke-static {p1, v1}, Lcom/sevenknowledge/common/SerializableUtil;->writePointF(Ljava/io/ObjectOutputStream;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/sevenknowledge/common/SerializableUtil;->writeRectF(Ljava/io/ObjectOutputStream;Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public addPoint(Landroid/graphics/PointF;)V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 241
    iget-object v1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 242
    iget-object v2, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 243
    iget-object v3, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 244
    iget v4, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v0

    if-gez v4, :cond_1

    .line 245
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 247
    :cond_1
    iget v4, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_2

    .line 248
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 250
    :cond_2
    iget v4, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3

    .line 251
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 253
    :cond_3
    iget v4, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_4

    .line 254
    iget v3, p1, Landroid/graphics/PointF;->y:F

    .line 256
    :cond_4
    iget-object v4, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 257
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bounds()Landroid/graphics/RectF;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public color()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mColor:I

    return v0
.end method

.method public countOfPoints()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public granularityType()Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    return-object v0
.end method

.method public lineWidthType()Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mLineWidthType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    return-object v0
.end method

.method public points()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public reduced()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mIsReduced:Z

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mColor:I

    return-void
.end method

.method public setGranularityType(Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;)V
    .locals 1

    .line 195
    iput-object p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    .line 196
    sget-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->RAW:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mIsReduced:Z

    return-void
.end method

.method public setLineWidthType(Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mLineWidthType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    return-void
.end method

.method public setStartPoint(Landroid/graphics/PointF;)V
    .locals 5

    .line 228
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 229
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    .line 275
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mPoints:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 278
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    mul-int/lit8 v2, v1, 0x2

    .line 280
    new-array v2, v2, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    .line 282
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    add-int/lit8 v6, v4, 0x1

    .line 283
    iget v7, v5, Landroid/graphics/PointF;->x:F

    aput v7, v2, v4

    add-int/lit8 v4, v4, 0x2

    .line 284
    iget v5, v5, Landroid/graphics/PointF;->y:F

    aput v5, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 288
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 289
    iget p2, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object p2, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mLineWidthType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    invoke-virtual {p2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object p2, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    invoke-virtual {p2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-boolean p2, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->mIsReduced:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
