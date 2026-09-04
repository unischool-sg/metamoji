.class public Lcom/metamoji/ns/direction/NsUserModeChangedEvent;
.super Ljava/lang/Object;
.source "NsUserModeChangedEvent.java"


# instance fields
.field private _existPresenter:Z

.field private _userMode:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;->_userMode:I

    .line 12
    iput-boolean p2, p0, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;->_existPresenter:Z

    return-void
.end method


# virtual methods
.method public getExistPresneter()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;->_existPresenter:Z

    return v0
.end method

.method public getUserMode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;->_userMode:I

    return v0
.end method

.method public setExistPresenter(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;->_existPresenter:Z

    return-void
.end method

.method public setUserMode(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;->_userMode:I

    return-void
.end method
