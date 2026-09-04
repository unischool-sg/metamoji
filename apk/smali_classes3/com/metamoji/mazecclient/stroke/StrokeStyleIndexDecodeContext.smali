.class public Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;
.super Ljava/lang/Object;
.source "StrokeStyleIndexDecodeContext.java"


# static fields
.field public static tsInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private placeHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/mazecclient/stroke/IMutableStrokeStyle;",
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

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->placeHolders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public decodeStrokeStyles(Lcom/metamoji/cm/DataArchiver;)V
    .locals 7

    .line 50
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v1

    .line 54
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 57
    new-instance v4, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    invoke-direct {v4, p1}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>(Lcom/metamoji/cm/DataArchiver;)V

    .line 59
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 60
    iget-object v6, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->placeHolders:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazecclient/stroke/IMutableStrokeStyle;

    .line 61
    const-class v6, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-static {v6}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/metamoji/mazecclient/stroke/IMutableStrokeStyle;->applyProperties(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/EnumSet;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    .line 65
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    return-void
.end method

.method public strokeStylePlaceholderForIndex(I)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 2

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->placeHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecclient/stroke/IMutableStrokeStyle;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->createPlaceholderInstance()Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->placeHolders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
