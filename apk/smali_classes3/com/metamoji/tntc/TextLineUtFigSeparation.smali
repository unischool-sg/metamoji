.class public Lcom/metamoji/tntc/TextLineUtFigSeparation;
.super Ljava/lang/Object;
.source "TextLineUtFigSeparation.java"


# instance fields
.field private _inkPage:J

.field private _textNoTextClassify:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "TextNoTextClassifyComponent"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_init()V

    return-void
.end method

.method private native _addStrokePoint(JLjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation
.end method

.method private native _classify(JJ)V
.end method

.method private native _dispose(JJ)V
.end method

.method private native _getResult(J)Lcom/metamoji/tntc/LineResultList;
.end method

.method private native _init()V
.end method


# virtual methods
.method public addStrokePoint(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-wide v0, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_inkPage:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_addStrokePoint(JLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public classify()V
    .locals 4

    .line 36
    iget-wide v0, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_textNoTextClassify:J

    iget-wide v2, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_inkPage:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_classify(JJ)V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_inkPage:J

    return-void
.end method

.method public dispose()V
    .locals 4

    .line 26
    iget-wide v0, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_textNoTextClassify:J

    iget-wide v2, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_inkPage:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_dispose(JJ)V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_textNoTextClassify:J

    .line 28
    iput-wide v0, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_inkPage:J

    return-void
.end method

.method public getResult()Lcom/metamoji/tntc/LineResultList;
    .locals 3

    .line 41
    iget-wide v0, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_textNoTextClassify:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_getResult(J)Lcom/metamoji/tntc/LineResultList;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 42
    iput-wide v1, p0, Lcom/metamoji/tntc/TextLineUtFigSeparation;->_textNoTextClassify:J

    return-object v0
.end method
