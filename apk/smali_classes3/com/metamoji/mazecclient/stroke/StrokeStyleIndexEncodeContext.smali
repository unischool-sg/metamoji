.class public Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;
.super Ljava/lang/Object;
.source "StrokeStyleIndexEncodeContext.java"


# static fields
.field public static tsInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encodeAsIndex:Z

.field private styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->styles:Ljava/util/List;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->encodeAsIndex:Z

    return-void
.end method


# virtual methods
.method public encodeStrokeStyles(Lcom/metamoji/cm/DataArchiver;)I
    .locals 3

    .line 51
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 54
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->styles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->encodeAsIndex:Z

    .line 58
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->styles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    .line 59
    invoke-interface {v1, p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 65
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 67
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v1
.end method

.method public indexForStrokeStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->styles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->styles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->styles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public isEncodeAsIndex()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->encodeAsIndex:Z

    return v0
.end method
