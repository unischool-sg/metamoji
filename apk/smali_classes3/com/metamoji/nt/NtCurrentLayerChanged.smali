.class public Lcom/metamoji/nt/NtCurrentLayerChanged;
.super Lcom/metamoji/df/controller/BroadcastContext;
.source "NtCurrentLayerChanged.java"


# instance fields
.field private mLayerIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/metamoji/df/controller/BroadcastContext;-><init>()V

    .line 11
    iput p1, p0, Lcom/metamoji/nt/NtCurrentLayerChanged;->mLayerIndex:I

    return-void
.end method


# virtual methods
.method public getLayerIndex()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/metamoji/nt/NtCurrentLayerChanged;->mLayerIndex:I

    return v0
.end method
