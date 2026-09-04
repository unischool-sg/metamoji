.class public Lcom/metamoji/tntc/LineResultRef;
.super Ljava/lang/Object;
.source "LineResultRef.java"


# instance fields
.field private _lineResult:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/metamoji/tntc/LineResultRef;->_lineResult:J

    return-void
.end method

.method private native _getBaselinePtAt(JI[F)V
.end method

.method private native _getBaselinePtCount(J)I
.end method

.method private native _getBoundPtAt(JI[F)V
.end method

.method private native _getBoundPtCount(J)I
.end method

.method private native _getStrokeIdAt(JI)Ljava/lang/String;
.end method

.method private native _getStrokeIdCount(J)I
.end method


# virtual methods
.method public getBaselinePtAt(I[F)V
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/metamoji/tntc/LineResultRef;->_lineResult:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/metamoji/tntc/LineResultRef;->_getBaselinePtAt(JI[F)V

    return-void
.end method

.method public getBaselinePtCount()I
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/metamoji/tntc/LineResultRef;->_lineResult:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tntc/LineResultRef;->_getBaselinePtCount(J)I

    move-result v0

    return v0
.end method

.method public getBoundPtAt(I[F)V
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/metamoji/tntc/LineResultRef;->_lineResult:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/metamoji/tntc/LineResultRef;->_getBoundPtAt(JI[F)V

    return-void
.end method

.method public getBoundPtCount()I
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/metamoji/tntc/LineResultRef;->_lineResult:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tntc/LineResultRef;->_getBoundPtCount(J)I

    move-result v0

    return v0
.end method

.method public getStrokeIdAt(I)Ljava/lang/String;
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/metamoji/tntc/LineResultRef;->_lineResult:J

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/tntc/LineResultRef;->_getStrokeIdAt(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStrokeIdCount()I
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/metamoji/tntc/LineResultRef;->_lineResult:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tntc/LineResultRef;->_getStrokeIdCount(J)I

    move-result v0

    return v0
.end method
