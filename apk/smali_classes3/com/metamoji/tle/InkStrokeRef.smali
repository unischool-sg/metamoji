.class public Lcom/metamoji/tle/InkStrokeRef;
.super Ljava/lang/Object;
.source "InkStrokeRef.java"


# instance fields
.field private _pInkStroke:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/metamoji/tle/InkStrokeRef;->_pInkStroke:J

    return-void
.end method

.method private native _getId(J)Ljava/lang/String;
.end method

.method private native _isFigure(J)Z
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/metamoji/tle/InkStrokeRef;->_pInkStroke:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tle/InkStrokeRef;->_getId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFigure()Z
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/metamoji/tle/InkStrokeRef;->_pInkStroke:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tle/InkStrokeRef;->_isFigure(J)Z

    move-result v0

    return v0
.end method
