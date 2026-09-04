.class public Lcom/metamoji/df/controller/ControllerContext;
.super Lcom/metamoji/cm/CmContext;
.source "ControllerContext.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$ICancellable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/ControllerContext$MediaType;
    }
.end annotation


# instance fields
.field private _cancelKey:Ljava/lang/String;

.field private _cancelled:Z

.field private _closed:Z

.field private _isIgnoreLayoutFrames:Z

.field private _purged:Z

.field private _restored:Z

.field private _viewport:Lcom/metamoji/df/sprite/Viewport;

.field public document:Lcom/metamoji/df/controller/DfDocument;

.field public factory:Lcom/metamoji/df/controller/ControllerFactory;

.field public mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field public modelManager:Lcom/metamoji/df/model/IModelManager;

.field public page:Lcom/metamoji/df/controller/DfPageController;

.field public parent:Lcom/metamoji/df/controller/DfController;

.field public settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/metamoji/cm/CmContext;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerContext;->document:Lcom/metamoji/df/controller/DfDocument;

    .line 24
    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    .line 25
    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerContext;->factory:Lcom/metamoji/df/controller/ControllerFactory;

    .line 26
    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerContext;->settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    .line 27
    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerContext;->modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 28
    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerContext;->page:Lcom/metamoji/df/controller/DfPageController;

    .line 29
    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/ControllerContext;->isCancellable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/metamoji/df/controller/ControllerContext;->_cancelled:Z

    return p1
.end method

.method public getViewport()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/metamoji/df/controller/ControllerContext;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    return-object v0
.end method

.method public isCancellable(Ljava/lang/String;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/df/controller/ControllerContext;->_cancelKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/metamoji/df/controller/ControllerContext;->_cancelled:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/metamoji/df/controller/ControllerContext;->_closed:Z

    return v0
.end method

.method public isIgnoreLayoutFrames()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/metamoji/df/controller/ControllerContext;->_isIgnoreLayoutFrames:Z

    return v0
.end method

.method public isPurged()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/metamoji/df/controller/ControllerContext;->_purged:Z

    return v0
.end method

.method public isRestored()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/metamoji/df/controller/ControllerContext;->_restored:Z

    return v0
.end method

.method public setCancellable(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/metamoji/df/controller/ControllerContext;->_cancelKey:Ljava/lang/String;

    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/metamoji/df/controller/ControllerContext;->_closed:Z

    return-void
.end method

.method public setIgnoreLayoutFrames(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/metamoji/df/controller/ControllerContext;->_isIgnoreLayoutFrames:Z

    return-void
.end method

.method public setPurged(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/metamoji/df/controller/ControllerContext;->_purged:Z

    return-void
.end method

.method public setRestored(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/metamoji/df/controller/ControllerContext;->_restored:Z

    return-void
.end method

.method public setViewport(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/metamoji/df/controller/ControllerContext;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    return-void
.end method
