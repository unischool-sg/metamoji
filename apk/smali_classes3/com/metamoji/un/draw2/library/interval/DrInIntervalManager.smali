.class public Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;
.super Ljava/lang/Object;
.source "DrInIntervalManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;,
        Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final m_groups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;",
            ">;"
        }
    .end annotation
.end field

.field private final m_intervals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_intervals:Ljava/util/HashMap;

    return-void
.end method

.method private static next(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 333
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addInterval(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    if-nez p6, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_intervals:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo p2, "\u540c\u3058 ID=%s \u306e interval \u304c\u65e2\u306b\u3042\u308b"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    invoke-virtual {v0, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    if-nez v0, :cond_2

    .line 110
    new-instance v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    invoke-direct {v0, p6}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;-><init>(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 111
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    invoke-virtual {v1, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-wide p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, v0

    .line 113
    invoke-virtual/range {p1 .. p6}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->insert(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_0
    return-void

    .line 118
    :cond_3
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_intervals:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 0

    .line 329
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->removeAllIntervals()V

    return-void
.end method

.method public getGroupOfInterval(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_intervals:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    if-nez v0, :cond_0

    .line 200
    const-string/jumbo v0, "\u6307\u5b9a\u3055\u308c\u305f ID=%s \u306e interval \u304c\u898b\u3064\u304b\u3089\u306a\u304b\u3063\u305f"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 204
    :cond_0
    iget-object p1, v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->group:Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    iget-object p1, p1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object p1
.end method

.method public getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    const/4 v0, 0x0

    if-nez p5, :cond_0

    return-object v0

    .line 312
    :cond_0
    invoke-virtual {p5}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->intervals()Ljava/util/SortedSet;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    .line 313
    iget-wide v2, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->end:D

    cmpl-double v2, v2, p3

    if-ltz v2, :cond_1

    .line 314
    iget-wide v2, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->start:D

    cmpg-double p5, v2, p1

    if-gtz p5, :cond_3

    .line 315
    iget-wide v2, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->start:D

    cmpl-double p1, v2, p1

    if-nez p1, :cond_2

    iget-wide p1, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->end:D

    cmpl-double p1, p1, p3

    if-eqz p1, :cond_3

    .line 316
    :cond_2
    iget-object p1, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 217
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    if-nez p1, :cond_1

    return-object v1

    .line 222
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->intervals()Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    .line 225
    iget-object v1, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getIntervalsIntersectingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 276
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 277
    const-string/jumbo p1, "\u306a\u305c\u304b\u30b0\u30eb\u30fc\u30d7 ID=%s \u5185\u306e\u533a\u9593\u304c 0 \u500b"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 281
    :cond_1
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->intervals()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->next(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    :goto_0
    if-eqz v1, :cond_2

    .line 287
    iget-wide v2, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->end:D

    cmpg-double v2, v2, p1

    if-gez v2, :cond_2

    .line 288
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->next(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 290
    iget-wide p1, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->start:D

    cmpg-double p1, p1, p3

    if-gtz p1, :cond_3

    .line 291
    iget-object p1, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->next(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    goto :goto_1

    :cond_3
    return-object p5
.end method

.method public getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 242
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 243
    const-string/jumbo p1, "\u306a\u305c\u304b\u30b0\u30eb\u30fc\u30d7 ID=%s \u5185\u306e\u533a\u9593\u304c 0 \u500b"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 247
    :cond_1
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->intervals()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->next(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    :goto_0
    if-eqz v1, :cond_2

    .line 253
    iget-wide v2, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->start:D

    cmpg-double v2, v2, p1

    if-gez v2, :cond_2

    .line 254
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->next(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 256
    iget-wide p1, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->end:D

    cmpg-double p1, p1, p3

    if-gtz p1, :cond_3

    .line 257
    iget-object p1, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->next(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    goto :goto_1

    :cond_3
    return-object p5
.end method

.method public removeAllIntervals()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_intervals:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public removeAllIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    if-nez v0, :cond_0

    .line 145
    const-string/jumbo v0, "\u6307\u5b9a\u3055\u308c\u305f ID=%s \u306e group \u304c\u898b\u3064\u304b\u3089\u306a\u304b\u3063\u305f"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 149
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->intervals()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    .line 150
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_intervals:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeInterval(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_intervals:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    if-nez v0, :cond_0

    .line 129
    const-string/jumbo v0, "\u6307\u5b9a\u3055\u308c\u305f ID=%s \u306e interval \u304c\u898b\u3064\u304b\u3089\u306a\u304b\u3063\u305f"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->group:Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    .line 133
    iget-object v2, v1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 134
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->erase(Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;)V

    .line 135
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_intervals:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->m_groups:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
