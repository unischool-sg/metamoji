.class public Lcom/metamoji/ctold/search/CtSortCondition$Builder;
.super Ljava/lang/Object;
.source "CtSortCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ctold/search/CtSortCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private sortKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtSortKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSortKey(Lcom/metamoji/ctold/search/CtSortKey;)Lcom/metamoji/ctold/search/CtSortCondition$Builder;
    .locals 1

    .line 92
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtSortKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtSortKey;->isAscending()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ctold/search/CtSortCondition$Builder;->addSortKey(Ljava/lang/String;Z)Lcom/metamoji/ctold/search/CtSortCondition$Builder;

    return-object p0
.end method

.method public addSortKey(Ljava/lang/String;Z)Lcom/metamoji/ctold/search/CtSortCondition$Builder;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSortCondition$Builder;->sortKeys:Ljava/util/List;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ctold/search/CtSortCondition$Builder;->sortKeys:Ljava/util/List;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSortCondition$Builder;->sortKeys:Ljava/util/List;

    new-instance v1, Lcom/metamoji/ctold/search/CtSortKey;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/ctold/search/CtSortKey;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/metamoji/ctold/search/CtSortCondition;
    .locals 2

    .line 102
    new-instance v0, Lcom/metamoji/ctold/search/CtSortCondition;

    iget-object v1, p0, Lcom/metamoji/ctold/search/CtSortCondition$Builder;->sortKeys:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/metamoji/ctold/search/CtSortCondition;-><init>(Ljava/util/List;)V

    return-object v0
.end method
