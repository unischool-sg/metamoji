.class public Lcom/metamoji/tle/TextLineArrayList;
.super Ljava/lang/Object;
.source "TextLineArrayList.java"


# instance fields
.field private _pTextLineArrayList:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/metamoji/tle/TextLineArrayList;->_pTextLineArrayList:J

    return-void
.end method

.method private native _dispose(J)V
.end method

.method private native _getCount(J)I
.end method

.method private native _getRefAt(JI)Lcom/metamoji/tle/TextLineRef;
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/metamoji/tle/TextLineArrayList;->_pTextLineArrayList:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tle/TextLineArrayList;->_dispose(J)V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/metamoji/tle/TextLineArrayList;->_pTextLineArrayList:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tle/TextLineArrayList;->_getCount(J)I

    move-result v0

    return v0
.end method

.method public getRefAt(I)Lcom/metamoji/tle/TextLineRef;
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/metamoji/tle/TextLineArrayList;->_pTextLineArrayList:J

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/tle/TextLineArrayList;->_getRefAt(JI)Lcom/metamoji/tle/TextLineRef;

    move-result-object p1

    return-object p1
.end method
