.class Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;
.super Ljava/lang/Object;
.source "DrInIntervalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntervalGroupType"
.end annotation


# instance fields
.field final id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private final m_intervals:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->m_intervals:Ljava/util/TreeSet;

    .line 59
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method


# virtual methods
.method erase(Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->m_intervals:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method insert(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;
    .locals 7

    .line 63
    new-instance v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    move-object v6, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;-><init>(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DDLcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;)V

    .line 64
    iget-object p1, v6, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->m_intervals:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method intervals()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->m_intervals:Ljava/util/TreeSet;

    return-object v0
.end method

.method size()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;->m_intervals:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method
