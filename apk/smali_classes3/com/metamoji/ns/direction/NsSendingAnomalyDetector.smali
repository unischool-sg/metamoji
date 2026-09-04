.class public Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;
.super Ljava/lang/Object;
.source "NsSendingAnomalyDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;,
        Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;
    }
.end annotation


# instance fields
.field private currentSectionInfo:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

.field private delegate:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;

.field private sectionCount:I

.field private sectionInterval:D

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private thresholdVelocity:D


# direct methods
.method public constructor <init>(DDI)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->thresholdVelocity:D

    .line 43
    iput-wide p3, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->sectionInterval:D

    .line 44
    iput p5, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->sectionCount:I

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->currentSectionInfo:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->sections:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->delegate:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;

    return-object v0
.end method

.method public monitor(ILjava/util/Date;Ljava/util/Date;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->currentSectionInfo:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

    invoke-direct {v0, p2}, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->currentSectionInfo:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->currentSectionInfo:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

    iget v0, p2, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->count:I

    add-int/2addr v0, p1

    iput v0, p2, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->count:I

    .line 69
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-object v0, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->currentSectionInfo:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    iget-wide v0, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->sectionInterval:D

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->currentSectionInfo:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

    const/4 p2, 0x0

    .line 71
    iput-object p2, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->currentSectionInfo:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

    .line 73
    iput-object p3, p1, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->endTime:Ljava/util/Date;

    .line 75
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->getVelocity()D

    move-result-wide p2

    iget-wide v0, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->thresholdVelocity:D

    cmpg-double p2, p2, v0

    .line 80
    iget-object p3, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->sections:Ljava/util/ArrayList;

    if-gez p2, :cond_1

    .line 77
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 80
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->sections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->sectionCount:I

    if-lt p1, p2, :cond_2

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->sections:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    iget-object p2, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object p2, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->delegate:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;

    if-eqz p2, :cond_2

    .line 88
    invoke-interface {p2, p0, p1}, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;->didDetect(Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public setDelegate(Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->delegate:Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;

    return-void
.end method
