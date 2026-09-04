.class public Lcom/metamoji/tle/CPolygonRef;
.super Ljava/lang/Object;
.source "CPolygonRef.java"


# instance fields
.field private _pCPolygon:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/metamoji/tle/CPolygonRef;->_pCPolygon:J

    return-void
.end method

.method private native _getVertex(JI[F)V
.end method

.method private native _getVertexNum(J)I
.end method


# virtual methods
.method public getVertex(I[F)V
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/metamoji/tle/CPolygonRef;->_pCPolygon:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/metamoji/tle/CPolygonRef;->_getVertex(JI[F)V

    return-void
.end method

.method public getVertexNum()I
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/metamoji/tle/CPolygonRef;->_pCPolygon:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tle/CPolygonRef;->_getVertexNum(J)I

    move-result v0

    return v0
.end method
