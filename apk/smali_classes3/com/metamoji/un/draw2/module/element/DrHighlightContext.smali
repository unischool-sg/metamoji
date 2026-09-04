.class public Lcom/metamoji/un/draw2/module/element/DrHighlightContext;
.super Ljava/lang/Object;
.source "DrHighlightContext.java"


# instance fields
.field private m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

.field private m_layer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

.field private m_process:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

.field private m_snapShot:Lcom/metamoji/df/sprite/Sprite;

.field private final m_snapShotBounds:Lcom/metamoji/cm/RectEx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_snapShotBounds:Lcom/metamoji/cm/RectEx;

    .line 17
    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->NONE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 18
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method


# virtual methods
.method public addSnapShotBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_snapShotBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method public clearSnapShotBounds()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_snapShotBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 93
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->NONE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setLayer(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setEditContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setSnapShot(Lcom/metamoji/df/sprite/Sprite;)V

    .line 97
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_snapShotBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method public editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    return-object v0
.end method

.method public layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_layer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    return-object v0
.end method

.method public process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_process:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    return-object v0
.end method

.method public setEditContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    return-void
.end method

.method public setLayer(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_layer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    return-void
.end method

.method public setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_process:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    return-void
.end method

.method public setSnapShot(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_snapShot:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method

.method public snapShot()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_snapShot:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public snapShotBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->m_snapShotBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method
