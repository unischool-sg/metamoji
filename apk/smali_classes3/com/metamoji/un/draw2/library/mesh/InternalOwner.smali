.class Lcom/metamoji/un/draw2/library/mesh/InternalOwner;
.super Ljava/lang/Object;
.source "DrMsMeshManager.java"

# interfaces
.implements Lcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;


# instance fields
.field result:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/InternalOwner;->result:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public checkExclusion(JJ)Z
    .locals 0

    .line 371
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public receiveHitReport(JJFFFFI)V
    .locals 0

    .line 376
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public receiveHitsReport(JJ[I)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/InternalOwner;->result:Ljava/util/HashMap;

    invoke-static {p3, p4, p1, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->idWithCount(JJ)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
