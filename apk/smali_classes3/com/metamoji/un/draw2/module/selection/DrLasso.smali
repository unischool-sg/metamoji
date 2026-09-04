.class public Lcom/metamoji/un/draw2/module/selection/DrLasso;
.super Ljava/lang/Object;
.source "DrLasso.java"


# instance fields
.field private m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

.field private m_path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;Landroid/graphics/Path;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 34
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_path:Landroid/graphics/Path;

    .line 76
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    if-nez v1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 82
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    return-void
.end method

.method public drawer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    return-object v0
.end method

.method public path()Landroid/graphics/Path;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_path:Landroid/graphics/Path;

    return-object v0
.end method

.method public repaint()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->repaint()V

    :cond_0
    return-void
.end method

.method public style()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrLasso;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->style()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
