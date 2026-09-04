.class Lcom/metamoji/un/draw2/library/utility/ReversedListGenerator;
.super Ljava/lang/Object;
.source "IOSUtil.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/ReversedListGenerator;->list:Ljava/util/List;

    return-void
.end method

.method static generate(Ljava/util/List;)Lcom/metamoji/un/draw2/library/utility/ReversedListGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/metamoji/un/draw2/library/utility/ReversedListGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 724
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/ReversedListGenerator;

    invoke-direct {v0, p0}, Lcom/metamoji/un/draw2/library/utility/ReversedListGenerator;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 720
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/ReverseListIterator;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/ReversedListGenerator;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/library/utility/ReverseListIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method
