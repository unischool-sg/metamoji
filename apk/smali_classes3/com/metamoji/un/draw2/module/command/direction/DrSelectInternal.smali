.class Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;
.super Ljava/lang/Object;
.source "DrSelectDirection.java"


# instance fields
.field baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field strokeEndIndex:D

.field strokeStartIndex:D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 40
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeStartIndex:D

    .line 41
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeEndIndex:D

    return-void
.end method
