.class public Lcom/metamoji/tle/TextLineRef;
.super Ljava/lang/Object;
.source "TextLineRef.java"


# instance fields
.field private _pTextLine:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/metamoji/tle/TextLineRef;->_pTextLine:J

    return-void
.end method

.method private native _getBoundRef(J)Lcom/metamoji/tle/CPolygonRef;
.end method

.method private native _getStrokesRef(J)Lcom/metamoji/tle/InkStrokeArrayListRef;
.end method


# virtual methods
.method public getBoundRef()Lcom/metamoji/tle/CPolygonRef;
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/metamoji/tle/TextLineRef;->_pTextLine:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tle/TextLineRef;->_getBoundRef(J)Lcom/metamoji/tle/CPolygonRef;

    move-result-object v0

    return-object v0
.end method

.method public getStrokesRef()Lcom/metamoji/tle/InkStrokeArrayListRef;
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/metamoji/tle/TextLineRef;->_pTextLine:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tle/TextLineRef;->_getStrokesRef(J)Lcom/metamoji/tle/InkStrokeArrayListRef;

    move-result-object v0

    return-object v0
.end method
