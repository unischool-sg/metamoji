.class public interface abstract Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;
.super Ljava/lang/Object;
.source "NsSendingAnomalyDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDelegate"
.end annotation


# virtual methods
.method public abstract didDetect(Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;",
            ">;)V"
        }
    .end annotation
.end method
