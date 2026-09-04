.class public Lcom/metamoji/df/controller/StageFrozenDisposer;
.super Ljava/lang/Object;
.source "StageFrozenDisposer.java"


# instance fields
.field _frozen:Z

.field _owner:Lcom/metamoji/df/sprite/SpriteOwner;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/sprite/Stage;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/metamoji/df/controller/StageFrozenDisposer;->_frozen:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/metamoji/df/controller/StageFrozenDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    if-nez p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getRoot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getOwner()Lcom/metamoji/df/sprite/SpriteOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/controller/StageFrozenDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    .line 25
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Stage;->isFrozen()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/df/controller/StageFrozenDisposer;->_frozen:Z

    if-nez p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/metamoji/df/controller/StageFrozenDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 27
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/SpriteOwner;->setFrozen(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 32
    iget-boolean v0, p0, Lcom/metamoji/df/controller/StageFrozenDisposer;->_frozen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/df/controller/StageFrozenDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/SpriteOwner;->setFrozen(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/metamoji/df/controller/StageFrozenDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    return-void
.end method
