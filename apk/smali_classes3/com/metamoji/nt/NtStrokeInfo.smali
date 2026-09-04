.class public Lcom/metamoji/nt/NtStrokeInfo;
.super Ljava/lang/Object;
.source "NtStrokeInfo.java"


# instance fields
.field public authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

.field public baseStrokeId:Ljava/lang/String;

.field public penAttrData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public segmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public stroke:Lcom/metamoji/cm/PointArray;

.field public strokeEndIndex:D

.field public strokeId:Ljava/lang/String;

.field public strokePenStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field public strokeStartIndex:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authorInfo()Lcom/metamoji/nt/NtAuthorInfo;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/metamoji/nt/NtStrokeInfo;->authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    return-object v0
.end method

.method public baseStrokeId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/nt/NtStrokeInfo;->baseStrokeId:Ljava/lang/String;

    return-object v0
.end method

.method public penAttrData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/metamoji/nt/NtStrokeInfo;->penAttrData:Ljava/util/List;

    return-object v0
.end method

.method public segmentData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/metamoji/nt/NtStrokeInfo;->segmentData:Ljava/util/List;

    return-object v0
.end method

.method public setAuthorInfo(Lcom/metamoji/nt/NtAuthorInfo;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/metamoji/nt/NtStrokeInfo;->authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    return-void
.end method

.method public setBaseStrokeId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/metamoji/nt/NtStrokeInfo;->baseStrokeId:Ljava/lang/String;

    return-void
.end method

.method public setPenAttrData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/metamoji/nt/NtStrokeInfo;->penAttrData:Ljava/util/List;

    return-void
.end method

.method public setSegmentData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/metamoji/nt/NtStrokeInfo;->segmentData:Ljava/util/List;

    return-void
.end method

.method public setStroke(Lcom/metamoji/cm/PointArray;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/metamoji/nt/NtStrokeInfo;->stroke:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method public setStrokeEndIndex(D)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/metamoji/nt/NtStrokeInfo;->strokeEndIndex:D

    return-void
.end method

.method public setStrokeId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/metamoji/nt/NtStrokeInfo;->strokeId:Ljava/lang/String;

    return-void
.end method

.method public setStrokePenStyle(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/metamoji/nt/NtStrokeInfo;->strokePenStyle:Lcom/metamoji/nt/share/NtPenStyle;

    return-void
.end method

.method public setStrokeStartIndex(D)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/metamoji/nt/NtStrokeInfo;->strokeStartIndex:D

    return-void
.end method

.method public stroke()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/nt/NtStrokeInfo;->stroke:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public strokeEndIndex()D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/metamoji/nt/NtStrokeInfo;->strokeEndIndex:D

    return-wide v0
.end method

.method public strokeId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/nt/NtStrokeInfo;->strokeId:Ljava/lang/String;

    return-object v0
.end method

.method public strokePenStyle()Lcom/metamoji/nt/share/NtPenStyle;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/nt/NtStrokeInfo;->strokePenStyle:Lcom/metamoji/nt/share/NtPenStyle;

    return-object v0
.end method

.method public strokeStartIndex()D
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/metamoji/nt/NtStrokeInfo;->strokeStartIndex:D

    return-wide v0
.end method
