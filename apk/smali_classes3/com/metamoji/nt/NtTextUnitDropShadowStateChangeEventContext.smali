.class public Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;
.super Lcom/metamoji/df/controller/BroadcastContext;
.source "NtTextUnitDropShadowStateChangeEventContext.java"


# instance fields
.field private _hideSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/metamoji/df/controller/BroadcastContext;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;->_hideSetting:Z

    return-void
.end method

.method public static eventWithHideSetting(Z)Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;
    .locals 1

    .line 14
    new-instance v0, Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;

    invoke-direct {v0}, Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;-><init>()V

    .line 15
    iput-boolean p0, v0, Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;->_hideSetting:Z

    return-object v0
.end method


# virtual methods
.method public getDropShadowHideSetting()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitDropShadowStateChangeEventContext;->_hideSetting:Z

    return v0
.end method
