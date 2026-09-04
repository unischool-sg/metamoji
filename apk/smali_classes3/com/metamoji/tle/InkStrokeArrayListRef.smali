.class public Lcom/metamoji/tle/InkStrokeArrayListRef;
.super Ljava/lang/Object;
.source "InkStrokeArrayListRef.java"


# instance fields
.field private _pInkStrokeArrayList:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/metamoji/tle/InkStrokeArrayListRef;->_pInkStrokeArrayList:J

    return-void
.end method

.method private native _getCount(J)I
.end method

.method private native _getRefAt(JI)Lcom/metamoji/tle/InkStrokeRef;
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/metamoji/tle/InkStrokeArrayListRef;->_pInkStrokeArrayList:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/tle/InkStrokeArrayListRef;->_getCount(J)I

    move-result v0

    return v0
.end method

.method public getRefAt(I)Lcom/metamoji/tle/InkStrokeRef;
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/metamoji/tle/InkStrokeArrayListRef;->_pInkStrokeArrayList:J

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/tle/InkStrokeArrayListRef;->_getRefAt(JI)Lcom/metamoji/tle/InkStrokeRef;

    move-result-object p1

    return-object p1
.end method
