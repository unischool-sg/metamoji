.class public abstract Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;
.super Ljava/lang/Object;
.source "DrOvSpriteDrawer.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;


# instance fields
.field private m_ending:Z

.field protected m_layer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

.field private m_owner:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;

.field protected final m_sprite:Lcom/metamoji/df/sprite/Sprite;

.field private m_uid:I


# direct methods
.method public static synthetic $r8$lambda$W90wjUpcbCKOuBB1XAgadB0PUIU(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->lambda$end$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_ending:Z

    return-void
.end method

.method private synthetic lambda$end$0()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_owner:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;

    invoke-interface {v0, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;->receiveCompletionWithDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_ending:Z

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_ending:Z

    .line 51
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_layer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    new-instance v1, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ending()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_ending:Z

    return v0
.end method

.method public layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_layer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    return-object v0
.end method

.method public owner()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_owner:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;

    return-object v0
.end method

.method public repaint()V
    .locals 0

    return-void
.end method

.method public setLayer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_layer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_layer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    :cond_1
    return-void
.end method

.method public setOwner(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_owner:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_uid:I

    return-void
.end method

.method public uid()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;->m_uid:I

    return v0
.end method
