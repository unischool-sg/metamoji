.class public Lcom/metamoji/ctold/search/CtSearchCondition$Builder;
.super Ljava/lang/Object;
.source "CtSearchCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ctold/search/CtSearchCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private extraConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sortConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/ctold/search/CtSortCondition;",
            ">;"
        }
    .end annotation
.end field

.field private tagConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/ctold/search/CtTagCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagCondition(Lcom/metamoji/ctold/search/CtTagCondition;)Lcom/metamoji/ctold/search/CtSearchCondition$Builder;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->tagConditions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->tagConditions:Ljava/util/Map;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->tagConditions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtTagCondition;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/metamoji/ctold/search/CtSearchCondition;
    .locals 4

    .line 274
    new-instance v0, Lcom/metamoji/ctold/search/CtSearchCondition;

    iget-object v1, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->tagConditions:Ljava/util/Map;

    iget-object v2, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->extraConditions:Ljava/util/Map;

    iget-object v3, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->sortConditions:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/ctold/search/CtSearchCondition;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public setExtraCondition(Ljava/lang/String;Ljava/lang/Object;)Lcom/metamoji/ctold/search/CtSearchCondition$Builder;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->extraConditions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->extraConditions:Ljava/util/Map;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->extraConditions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSortCondition(Ljava/lang/String;Lcom/metamoji/ctold/search/CtSortCondition;)Lcom/metamoji/ctold/search/CtSearchCondition$Builder;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->sortConditions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->sortConditions:Ljava/util/Map;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSearchCondition$Builder;->sortConditions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
