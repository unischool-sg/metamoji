.class public Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;
.super Ljava/lang/Object;
.source "DmSortDescriptor.java"


# instance fields
.field m_ascending:Z

.field m_itemForComparing:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;->m_itemForComparing:Ljava/lang/String;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;->m_ascending:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;)V

    .line 23
    iput-boolean p2, p0, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;->m_ascending:Z

    return-void
.end method


# virtual methods
.method public isAscending()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;->m_ascending:Z

    return v0
.end method

.method public itemForComparing()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;->m_itemForComparing:Ljava/lang/String;

    return-object v0
.end method
