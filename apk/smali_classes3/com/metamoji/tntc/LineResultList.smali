.class public Lcom/metamoji/tntc/LineResultList;
.super Ljava/lang/Object;
.source "LineResultList.java"


# instance fields
.field private _lineResultList:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/metamoji/tntc/LineResultList;->_lineResultList:J

    return-void
.end method

.method private native _dispose(J)V
.end method

.method private native _getLineResultCount(J)I
.end method

.method private native _getLineResultRefAt(JI)Lcom/metamoji/tntc/LineResultRef;
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/metamoji/tntc/LineResultList;->_lineResultList:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tntc/LineResultList;->_dispose(J)V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/metamoji/tntc/LineResultList;->_lineResultList:J

    return-void
.end method

.method public getLineResultCount()I
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/metamoji/tntc/LineResultList;->_lineResultList:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tntc/LineResultList;->_getLineResultCount(J)I

    move-result v0

    return v0
.end method

.method public getLineResultRefAt(I)Lcom/metamoji/tntc/LineResultRef;
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/metamoji/tntc/LineResultList;->_lineResultList:J

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/tntc/LineResultList;->_getLineResultRefAt(JI)Lcom/metamoji/tntc/LineResultRef;

    move-result-object p1

    return-object p1
.end method
