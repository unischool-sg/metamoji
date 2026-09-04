.class public Lcom/metamoji/mazec/ui/CnvCandidatesBar;
.super Landroid/widget/LinearLayout;
.source "CnvCandidatesBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;
    }
.end annotation


# static fields
.field private static final FAIDING_EDGE_LENGTH:I = 0x4


# instance fields
.field private mButtonMore:Landroid/widget/ImageView;

.field private mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

.field private mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;

.field private mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

.field private mScrollView:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCandsPanel(Lcom/metamoji/mazec/ui/CnvCandidatesBar;)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance p1, Lcom/metamoji/mazec/ui/CnvCandidatesBar$1;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar$1;-><init>(Lcom/metamoji/mazec/ui/CnvCandidatesBar;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance p1, Lcom/metamoji/mazec/ui/CnvCandidatesBar$1;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar$1;-><init>(Lcom/metamoji/mazec/ui/CnvCandidatesBar;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    return-void
.end method

.method static getCandidateTypes()[I
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->getCandidateTypes(Z)[I

    move-result-object v0

    return-object v0
.end method

.method static getCandidateTypes(Z)[I
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    .line 52
    filled-new-array {v4, v1, v2, v3, v0}, [I

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    filled-new-array {v4, v3, v2, v1, v0}, [I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public closeCandidatesView()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;->onRequestCandidatesViewClose()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public commitCurrentCandidate()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->commitCurrentCandidate()Z

    move-result v0

    return v0
.end method

.method public getPreferableHeight()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getPreferableHeight()I

    move-result v0

    return v0
.end method

.method public hasCandidates()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->hasCandidates()Z

    move-result v0

    return v0
.end method

.method public hasCurrentCandidate()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->hasCurrentCandidate()Z

    move-result v0

    return v0
.end method

.method protected init(Lcom/metamoji/mazec/MazecIms;)V
    .locals 2

    .line 106
    const-string v0, "id.cnv_candidates_bar_scroller"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mScrollView:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lcom/metamoji/mazec/ui/CnvCandidatesBar$2;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar$2;-><init>(Lcom/metamoji/mazec/ui/CnvCandidatesBar;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setScrollListener(Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;)V

    .line 121
    :cond_0
    const-string v0, "id.cnv_candidates_bar_panel"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->init(Lcom/metamoji/mazec/MazecIms;)V

    .line 126
    :cond_1
    const-string p1, "id.cnv_candiates_more_button"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mButtonMore:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 128
    new-instance v0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$3;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar$3;-><init>(Lcom/metamoji/mazec/ui/CnvCandidatesBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 263
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 265
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->getWidth()I

    move-result p2

    .line 266
    iget-object p3, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    invoke-virtual {p3}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getWidth()I

    move-result p3

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-le p3, p2, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    move p3, p5

    :goto_0
    if-nez p3, :cond_2

    .line 268
    iget-object p3, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    iget-object v0, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mScrollView:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->getScrollX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->layoutCandidatesInWidth(I)I

    move-result p3

    if-le p3, p2, :cond_1

    goto :goto_1

    :cond_1
    move p4, p5

    :goto_1
    move p3, p4

    .line 271
    :cond_2
    iget-object p2, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mButtonMore:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_4

    .line 281
    iget-object p2, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mButtonMore:Landroid/widget/ImageView;

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    if-nez p3, :cond_4

    .line 274
    iget-object p2, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mButtonMore:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method onStarting()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    return-void
.end method

.method public openCandidatesView()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;->onRequestCandidatesViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerAsLister(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->addMazecEventListener(Lcom/metamoji/mazec/MazecEventListener;)V

    return-void
.end method

.method public resetCurrentCandidate()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->resetCurrentCandidate()V

    return-void
.end method

.method public setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V
    .locals 1

    .line 172
    invoke-static {}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->getCandidateTypes()[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;[I)V

    return-void
.end method

.method public setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;[I)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mScrollView:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->scrollTo(II)V

    .line 178
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->getWidth()I

    move-result v0

    .line 179
    iget-object v2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    invoke-virtual {v2, p1, p2, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;[II)I

    move-result p2

    if-le p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mButtonMore:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object p2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;

    if-eqz p2, :cond_2

    .line 183
    invoke-interface {p2, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;->onConvertResultUpdate(Lcom/metamoji/mazec/converter/ConvertResult;)V

    :cond_2
    return-void
.end method

.method public setCurrentCandidateToNext()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->setCurrentCandidateToNext()V

    return-void
.end method

.method public setListener(Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mCandsPanel:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->setListener(Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;)V

    .line 204
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;

    return-void
.end method

.method public unregisterFromLister(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->removeMazecEventListener(Lcom/metamoji/mazec/MazecEventListener;)V

    return-void
.end method
