.class public Lcom/metamoji/dm/fw/metadata/DmSortCondition;
.super Ljava/lang/Object;
.source "DmSortCondition.java"


# instance fields
.field private _ascending:Z

.field private _sortKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSortKey()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->_sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAscending()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->_ascending:Z

    return v0
.end method

.method public setAscending(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->_ascending:Z

    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->_sortKey:Ljava/lang/String;

    return-void
.end method
