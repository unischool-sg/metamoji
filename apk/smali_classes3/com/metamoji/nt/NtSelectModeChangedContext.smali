.class public Lcom/metamoji/nt/NtSelectModeChangedContext;
.super Lcom/metamoji/df/controller/BroadcastContext;
.source "NtSelectModeChangedContext.java"


# instance fields
.field mIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/metamoji/df/controller/BroadcastContext;-><init>()V

    .line 14
    iput p1, p0, Lcom/metamoji/nt/NtSelectModeChangedContext;->mIndex:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/metamoji/nt/NtSelectModeChangedContext;->mIndex:I

    return v0
.end method
