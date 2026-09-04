.class public Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;
.super Ljava/lang/Object;
.source "NsSendingAnomalyDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionInfo"
.end annotation


# instance fields
.field public count:I

.field public endTime:Ljava/util/Date;

.field public startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->startTime:Ljava/util/Date;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->endTime:Ljava/util/Date;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->count:I

    return-void
.end method


# virtual methods
.method public getVelocity()D
    .locals 7

    .line 26
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->endTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 29
    :cond_0
    iget v1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->count:I

    int-to-double v1, v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    div-double/2addr v1, v3

    return-wide v1
.end method
