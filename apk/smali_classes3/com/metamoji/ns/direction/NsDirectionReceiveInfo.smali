.class public Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;
.super Ljava/lang/Object;
.source "NsDirectionReceiveInfo.java"


# instance fields
.field public boothId:Ljava/lang/String;

.field public bySendBack:Z

.field public bySendBackFromServer:Z

.field public sequenceNo:J

.field public timestamp:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 37
    iput-wide v1, p0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->sequenceNo:J

    .line 38
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->timestamp:Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    .line 40
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->uid:Ljava/lang/String;

    return-void
.end method
