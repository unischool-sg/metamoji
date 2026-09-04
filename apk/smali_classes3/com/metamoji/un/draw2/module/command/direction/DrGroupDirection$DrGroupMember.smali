.class Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;
.super Ljava/lang/Object;
.source "DrGroupDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrGroupMember"
.end annotation


# instance fields
.field baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field strokeEndIndex:D

.field strokeStartIndex:D

.field uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 91
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeStartIndex:D

    .line 92
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    return-void
.end method


# virtual methods
.method getProperties()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 127
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeStartIndex:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    cmpg-double v2, v4, v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v2, :cond_1

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    .line 132
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 133
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 135
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    .line 136
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 128
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method setProperties(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-eqz p1, :cond_3

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    .line 118
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 119
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeStartIndex:D

    .line 120
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    .line 121
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void

    .line 111
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 114
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeStartIndex:D

    const/4 v0, 0x1

    .line 115
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    return-void

    .line 104
    :cond_3
    :goto_0
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeStartIndex:D

    .line 105
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    .line 106
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method
