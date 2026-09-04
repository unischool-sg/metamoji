.class Lcom/metamoji/ui/DetailView$AddSpriteOwner;
.super Ljava/lang/Object;
.source "DetailView.java"

# interfaces
.implements Lcom/metamoji/df/sprite/SpriteOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/DetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddSpriteOwner"
.end annotation


# instance fields
.field _added:Lcom/metamoji/df/sprite/SpriteOwner;

.field _org:Lcom/metamoji/df/sprite/Stage;

.field final synthetic this$0:Lcom/metamoji/ui/DetailView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method connect(Lcom/metamoji/df/sprite/Stage;Lcom/metamoji/df/sprite/Stage;)V
    .locals 0

    .line 334
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->disconnect()V

    .line 336
    iput-object p1, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    .line 337
    iput-object p2, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_added:Lcom/metamoji/df/sprite/SpriteOwner;

    .line 338
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setOwner(Lcom/metamoji/df/sprite/SpriteOwner;)V

    return-void
.end method

.method disconnect()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 349
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setFrozen(Z)V

    .line 351
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setOwner(Lcom/metamoji/df/sprite/SpriteOwner;)V

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_added:Lcom/metamoji/df/sprite/SpriteOwner;

    if-eqz v0, :cond_2

    .line 355
    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/SpriteOwner;->setQueueing(Z)V

    .line 356
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_added:Lcom/metamoji/df/sprite/SpriteOwner;

    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/SpriteOwner;->setFrozen(Z)V

    :cond_2
    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    .line 359
    iput-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_added:Lcom/metamoji/df/sprite/SpriteOwner;

    return-void
.end method

.method public invalidateSpriteRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->invalidateSpriteRect(Landroid/graphics/RectF;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_added:Lcom/metamoji/df/sprite/SpriteOwner;

    if-eqz v0, :cond_1

    .line 368
    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/SpriteOwner;->invalidateSpriteRect(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public setFrozen(Z)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->setFrozen(Z)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_added:Lcom/metamoji/df/sprite/SpriteOwner;

    if-eqz v0, :cond_1

    .line 394
    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/SpriteOwner;->setFrozen(Z)V

    :cond_1
    return-void
.end method

.method public setQueueing(Z)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_added:Lcom/metamoji/df/sprite/SpriteOwner;

    if-eqz v0, :cond_1

    .line 381
    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/SpriteOwner;->setQueueing(Z)V

    :cond_1
    return-void
.end method

.method public toStage()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->_org:Lcom/metamoji/df/sprite/Stage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->toStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    return-object v0
.end method
