.class Lcom/metamoji/ctold/database/CtTagDatabaseImpl$2;
.super Ljava/lang/Object;
.source "CtTagDatabaseImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->sort(Ljava/util/List;Lcom/metamoji/ctold/search/CtSearchCondition;)Lcom/metamoji/ctold/search/CtSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/ctold/tag/CtTagInstance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ctold/database/CtTagDatabaseImpl;

.field final synthetic val$searchCondition:Lcom/metamoji/ctold/search/CtSearchCondition;


# direct methods
.method constructor <init>(Lcom/metamoji/ctold/database/CtTagDatabaseImpl;Lcom/metamoji/ctold/search/CtSearchCondition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 690
    iput-object p1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$2;->this$0:Lcom/metamoji/ctold/database/CtTagDatabaseImpl;

    iput-object p2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$2;->val$searchCondition:Lcom/metamoji/ctold/search/CtSearchCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/ctold/tag/CtTagInstance;)I
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$2;->val$searchCondition:Lcom/metamoji/ctold/search/CtSearchCondition;

    invoke-virtual {v0}, Lcom/metamoji/ctold/search/CtSearchCondition;->getSortConditions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$2;->val$searchCondition:Lcom/metamoji/ctold/search/CtSearchCondition;

    invoke-virtual {v0}, Lcom/metamoji/ctold/search/CtSearchCondition;->getSortConditions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/search/CtSortCondition;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 694
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$2;->this$0:Lcom/metamoji/ctold/database/CtTagDatabaseImpl;

    invoke-virtual {v1, p1, p2, v0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->compareTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/ctold/search/CtSortCondition;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 690
    check-cast p1, Lcom/metamoji/ctold/tag/CtTagInstance;

    check-cast p2, Lcom/metamoji/ctold/tag/CtTagInstance;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$2;->compare(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/ctold/tag/CtTagInstance;)I

    move-result p1

    return p1
.end method
