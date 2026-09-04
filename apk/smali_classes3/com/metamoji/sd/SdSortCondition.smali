.class public Lcom/metamoji/sd/SdSortCondition;
.super Ljava/lang/Object;
.source "SdSortCondition.java"


# static fields
.field public static DOCUMENT_SEARCH_SORT_CREATE:Ljava/lang/String; = "create"

.field public static DOCUMENT_SEARCH_SORT_PRIORITY:Ljava/lang/String; = "priority"

.field public static DOCUMENT_SEARCH_SORT_TITLE:Ljava/lang/String; = "title"

.field public static DOCUMENT_SEARCH_SORT_UPDATE:Ljava/lang/String; = "update"


# instance fields
.field private m_ascending:Z

.field private m_sortKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/metamoji/sd/SdSortCondition;->m_sortKey:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/metamoji/sd/SdSortCondition;->m_ascending:Z

    return-void
.end method


# virtual methods
.method public getAscending()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/metamoji/sd/SdSortCondition;->m_ascending:Z

    return v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/sd/SdSortCondition;->m_sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAscending(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/metamoji/sd/SdSortCondition;->m_ascending:Z

    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/metamoji/sd/SdSortCondition;->m_sortKey:Ljava/lang/String;

    return-void
.end method
