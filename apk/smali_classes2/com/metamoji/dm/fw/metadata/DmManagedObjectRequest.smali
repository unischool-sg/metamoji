.class public Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;
.super Ljava/lang/Object;
.source "DmManagedObjectRequest.java"


# instance fields
.field private m_batchSize:I

.field private m_includesSubentities:Z

.field private m_limit:I

.field private m_offset:I

.field private m_predicate:Lcom/metamoji/dm/fw/metadata/DmPredicate;

.field private m_sortDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private m_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_sortDescriptors:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_batchSize:I

    .line 17
    iput v1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_offset:I

    .line 18
    iput v1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_limit:I

    .line 25
    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_predicate:Lcom/metamoji/dm/fw/metadata/DmPredicate;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/dm/fw/metadata/DmPredicate;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_sortDescriptors:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_batchSize:I

    .line 17
    iput v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_offset:I

    .line 18
    iput v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_limit:I

    .line 30
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_predicate:Lcom/metamoji/dm/fw/metadata/DmPredicate;

    return-void
.end method


# virtual methods
.method public addSortDescriptors(Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_sortDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fetchBatchSize()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_batchSize:I

    return v0
.end method

.method public fetchLimit()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_limit:I

    return v0
.end method

.method public fetchOffset()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_offset:I

    return v0
.end method

.method public includesSubentities()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_includesSubentities:Z

    return v0
.end method

.method public predicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_predicate:Lcom/metamoji/dm/fw/metadata/DmPredicate;

    return-object v0
.end method

.method public setFetchBatchSize(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_batchSize:I

    return-void
.end method

.method public setFetchLimit(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_limit:I

    return-void
.end method

.method public setFetchOffset(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_offset:I

    return-void
.end method

.method public setIncludesSubentities(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_includesSubentities:Z

    return-void
.end method

.method public setPredicate(Lcom/metamoji/dm/fw/metadata/DmPredicate;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_predicate:Lcom/metamoji/dm/fw/metadata/DmPredicate;

    return-void
.end method

.method public setSortDescriptors(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_sortDescriptors:Ljava/util/ArrayList;

    return-void
.end method

.method public setSqlDriver(Lcom/metamoji/dm/fw/metadata/DmSqlDriver;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    return-void
.end method

.method public sortDescriptors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_sortDescriptors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->m_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    return-object v0
.end method
