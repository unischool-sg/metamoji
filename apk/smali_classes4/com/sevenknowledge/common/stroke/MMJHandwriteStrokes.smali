.class public Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;
.super Ljava/lang/Object;
.source "MMJHandwriteStrokes.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINEWIDTH_RATIO_BOLD:F = 0.065f

.field public static final LINEWIDTH_RATIO_NORMAL:F = 0.033f

.field public static final LINEWIDTH_RATIO_SEMIBOLD:F = 0.045f

.field public static final LINEWIDTH_RATIO_THIN:F = 0.025f

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBaseLine:F

.field mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

.field private transient mOuterBounds:Landroid/graphics/RectF;

.field private mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;",
            ">;"
        }
    .end annotation
.end field

.field private mTopLine:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes$1;

    invoke-direct {v0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes$1;-><init>()V

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mTopLine:F

    .line 52
    iput p2, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mBaseLine:F

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mStrokes:Ljava/util/ArrayList;

    .line 55
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mOuterBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mStrokes:Ljava/util/ArrayList;

    .line 206
    sget-object v1, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mTopLine:F

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mBaseLine:F

    .line 210
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mOuterBounds:Landroid/graphics/RectF;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->createByValue(I)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    move-result-object p1

    iput-object p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mOuterBounds:Landroid/graphics/RectF;

    .line 72
    invoke-static {p1, v0}, Lcom/sevenknowledge/common/SerializableUtil;->readRectF(Ljava/io/ObjectInputStream;Landroid/graphics/RectF;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 65
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mOuterBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/sevenknowledge/common/SerializableUtil;->writeRectF(Ljava/io/ObjectOutputStream;Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public addStroke(Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bounds()Landroid/graphics/RectF;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mOuterBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGranularityType()Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    return-object v0
.end method

.method public getStrokes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mStrokes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public points()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;

    .line 108
    invoke-virtual {v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->points()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setGranularityType(Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    return-void
.end method

.method public setGuideLine(FF)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mTopLine:F

    .line 97
    iput p2, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mBaseLine:F

    return-void
.end method

.method public setOuterBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mOuterBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public strokeAtIndex(I)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;

    return-object p1
.end method

.method public strokeCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 194
    iget v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mTopLine:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 195
    iget v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mBaseLine:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 196
    iget-object v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mOuterBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 197
    iget-object p2, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mGranularityType:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    invoke-virtual {p2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public yBaseLine()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mBaseLine:F

    return v0
.end method

.method public yTopLine()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->mTopLine:F

    return v0
.end method
