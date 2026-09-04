.class public Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;
.super Lcom/metamoji/ui/cabinet/ShareViewGridView;
.source "ShareViewNormalGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/ShareViewGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/ShareViewGridView;->onSizeChanged(IIII)V

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->getVisibility()I

    move-result p2

    const/4 p3, 0x4

    .line 28
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setVisibility(I)V

    .line 29
    new-instance p3, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;-><init>(Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;II)V

    invoke-virtual {p0, p3}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
