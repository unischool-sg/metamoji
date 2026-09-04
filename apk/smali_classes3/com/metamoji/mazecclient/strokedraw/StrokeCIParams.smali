.class public Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;
.super Ljava/lang/Object;
.source "StrokeCIParams.java"


# instance fields
.field private delta_:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelta()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;->delta_:D

    return-wide v0
.end method

.method public setDelta(D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;->delta_:D

    return-void
.end method
