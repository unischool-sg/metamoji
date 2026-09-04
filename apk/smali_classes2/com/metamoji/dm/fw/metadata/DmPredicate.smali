.class public Lcom/metamoji/dm/fw/metadata/DmPredicate;
.super Ljava/lang/Object;
.source "DmPredicate.java"


# instance fields
.field m_bindings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/j256/ormlite/stmt/SelectArg;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_idList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_predicate:Lcom/j256/ormlite/stmt/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/Where<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m_searchCondition:Lcom/metamoji/dm/fw/metadata/DmSearchCondition;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/stmt/Where;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">(",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmPredicate;->m_predicate:Lcom/j256/ormlite/stmt/Where;

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmPredicate;->m_bindings:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmPredicate;->m_searchCondition:Lcom/metamoji/dm/fw/metadata/DmSearchCondition;

    .line 32
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmPredicate;->m_idList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/stmt/Where;Lcom/metamoji/dm/fw/metadata/DmSearchCondition;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">(",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/dm/fw/metadata/DmSearchCondition;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmPredicate;-><init>(Lcom/j256/ormlite/stmt/Where;)V

    .line 38
    iput-object p2, p0, Lcom/metamoji/dm/fw/metadata/DmPredicate;->m_searchCondition:Lcom/metamoji/dm/fw/metadata/DmSearchCondition;

    .line 39
    iput-object p3, p0, Lcom/metamoji/dm/fw/metadata/DmPredicate;->m_idList:Ljava/util/ArrayList;

    .line 41
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmPredicate;->m_bindings:Ljava/util/HashMap;

    invoke-virtual {p2, p3, p1, v0}, Lcom/metamoji/dm/fw/metadata/DmSearchCondition;->createCondition(Ljava/util/ArrayList;Lcom/j256/ormlite/stmt/Where;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public getBindings()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/j256/ormlite/stmt/SelectArg;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmPredicate;->m_bindings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPredicate()Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">()",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmPredicate;->m_predicate:Lcom/j256/ormlite/stmt/Where;

    return-object v0
.end method
