.class public Lcom/metamoji/nt/NtLayerChangedEventContext;
.super Lcom/metamoji/df/controller/BroadcastContext;
.source "NtLayerChangedEventContext.java"


# instance fields
.field public layerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/metamoji/df/controller/BroadcastContext;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/metamoji/nt/NtLayerChangedEventContext;->layerId:Ljava/lang/String;

    return-void
.end method
