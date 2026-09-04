.class public Lcom/metamoji/df/controller/StageQueueingDisposer;
.super Ljava/lang/Object;
.source "StageQueueingDisposer.java"


# instance fields
.field _owner:Lcom/metamoji/df/sprite/SpriteOwner;

.field _queueing:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_queueing:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    .line 22
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/StageQueueingDisposer;->init(Lcom/metamoji/df/sprite/Stage;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/sprite/Stage;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_queueing:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    .line 18
    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/StageQueueingDisposer;->init(Lcom/metamoji/df/sprite/Stage;)V

    return-void
.end method

.method private init(Lcom/metamoji/df/sprite/Stage;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getRoot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getOwner()Lcom/metamoji/df/sprite/SpriteOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    .line 35
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Stage;->isQueueing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_queueing:Z

    if-nez p1, :cond_2

    .line 36
    iget-object p1, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 37
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/SpriteOwner;->setQueueing(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_queueing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/SpriteOwner;->setQueueing(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/metamoji/df/controller/StageQueueingDisposer;->_owner:Lcom/metamoji/df/sprite/SpriteOwner;

    return-void
.end method
