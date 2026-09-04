.class Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;
.super Ljava/lang/Object;
.source "DrMsMeshManager.java"

# interfaces
.implements Lcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;


# instance fields
.field private final m_rect:Lcom/metamoji/cm/RectEx;

.field owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;->m_rect:Lcom/metamoji/cm/RectEx;

    return-void
.end method


# virtual methods
.method public checkExclusion(JJ)Z
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    invoke-static {p3, p4, p1, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->idWithCount(JJ)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;->checkExclusionWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result p1

    return p1
.end method

.method public receiveHitReport(JJFFFFI)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;->m_rect:Lcom/metamoji/cm/RectEx;

    sub-float/2addr p7, p5

    sub-float/2addr p8, p6

    invoke-virtual {v0, p5, p6, p7, p8}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    .line 354
    iget-object p5, p0, Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    invoke-static {p3, p4, p1, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->idWithCount(JJ)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-interface {p5, p1, p2, p9}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;->receiveHitReportWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;I)V

    return-void
.end method

.method public receiveHitsReport(JJ[I)V
    .locals 0

    .line 359
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
