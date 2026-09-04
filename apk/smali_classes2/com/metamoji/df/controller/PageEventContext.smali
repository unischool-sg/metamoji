.class public Lcom/metamoji/df/controller/PageEventContext;
.super Lcom/metamoji/cm/CmContext;
.source "PageEventContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/PageEventContext$Kind;
    }
.end annotation


# instance fields
.field private currentPageIndex:I

.field private currentPageIndexChanged:Z

.field private kind:Lcom/metamoji/df/controller/PageEventContext$Kind;

.field private moveFromIndex:I

.field private moveToIndex:I

.field private numberOfPages:I

.field private numberOfPagesChanged:Z

.field private pageInserted:I

.field private pagesDeleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/metamoji/cm/CmContext;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/metamoji/df/controller/PageEventContext;->kind:Lcom/metamoji/df/controller/PageEventContext$Kind;

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/metamoji/df/controller/PageEventContext;->numberOfPagesChanged:Z

    .line 51
    iput-boolean v1, p0, Lcom/metamoji/df/controller/PageEventContext;->currentPageIndexChanged:Z

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lcom/metamoji/df/controller/PageEventContext;->numberOfPages:I

    .line 53
    iput v1, p0, Lcom/metamoji/df/controller/PageEventContext;->currentPageIndex:I

    .line 54
    iput v1, p0, Lcom/metamoji/df/controller/PageEventContext;->pageInserted:I

    .line 55
    iput-object v0, p0, Lcom/metamoji/df/controller/PageEventContext;->pagesDeleted:Ljava/util/List;

    .line 56
    iput v1, p0, Lcom/metamoji/df/controller/PageEventContext;->moveFromIndex:I

    .line 57
    iput v1, p0, Lcom/metamoji/df/controller/PageEventContext;->moveToIndex:I

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/df/controller/PageEventContext$Kind;ZZIIILjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/PageEventContext$Kind;",
            "ZZIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/metamoji/df/controller/PageEventContext;->kind:Lcom/metamoji/df/controller/PageEventContext$Kind;

    .line 38
    iput-boolean p2, p0, Lcom/metamoji/df/controller/PageEventContext;->numberOfPagesChanged:Z

    .line 39
    iput-boolean p3, p0, Lcom/metamoji/df/controller/PageEventContext;->currentPageIndexChanged:Z

    .line 40
    iput p4, p0, Lcom/metamoji/df/controller/PageEventContext;->numberOfPages:I

    .line 41
    iput p5, p0, Lcom/metamoji/df/controller/PageEventContext;->currentPageIndex:I

    .line 42
    iput p6, p0, Lcom/metamoji/df/controller/PageEventContext;->pageInserted:I

    .line 43
    iput-object p7, p0, Lcom/metamoji/df/controller/PageEventContext;->pagesDeleted:Ljava/util/List;

    .line 44
    iput p8, p0, Lcom/metamoji/df/controller/PageEventContext;->moveFromIndex:I

    .line 45
    iput p9, p0, Lcom/metamoji/df/controller/PageEventContext;->moveToIndex:I

    return-void
.end method

.method public static newPageEventContextOnCurrentPageChanged(II)Lcom/metamoji/df/controller/PageEventContext;
    .locals 10

    .line 133
    new-instance v0, Lcom/metamoji/df/controller/PageEventContext;

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->CurrentPageChanged:Lcom/metamoji/df/controller/PageEventContext$Kind;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p0

    move v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/df/controller/PageEventContext;-><init>(Lcom/metamoji/df/controller/PageEventContext$Kind;ZZIIILjava/util/List;II)V

    return-object v0
.end method

.method public static newPageEventContextOnDeleted(ZIILjava/util/List;)Lcom/metamoji/df/controller/PageEventContext;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/metamoji/df/controller/PageEventContext;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/metamoji/df/controller/PageEventContext;

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->Deleted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/df/controller/PageEventContext;-><init>(Lcom/metamoji/df/controller/PageEventContext$Kind;ZZIIILjava/util/List;II)V

    return-object v0
.end method

.method public static newPageEventContextOnInserted(ZIII)Lcom/metamoji/df/controller/PageEventContext;
    .locals 10

    .line 70
    new-instance v0, Lcom/metamoji/df/controller/PageEventContext;

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->Inserted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/df/controller/PageEventContext;-><init>(Lcom/metamoji/df/controller/PageEventContext$Kind;ZZIIILjava/util/List;II)V

    return-object v0
.end method

.method public static newPageEventContextOnMoved(ZIIII)Lcom/metamoji/df/controller/PageEventContext;
    .locals 10

    .line 113
    new-instance v0, Lcom/metamoji/df/controller/PageEventContext;

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->Moved:Lcom/metamoji/df/controller/PageEventContext$Kind;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v3, p0

    move v5, p1

    move v4, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/df/controller/PageEventContext;-><init>(Lcom/metamoji/df/controller/PageEventContext$Kind;ZZIIILjava/util/List;II)V

    return-object v0
.end method


# virtual methods
.method public getCurrentPageIndex()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/metamoji/df/controller/PageEventContext;->currentPageIndex:I

    return v0
.end method

.method public getKind()Lcom/metamoji/df/controller/PageEventContext$Kind;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/metamoji/df/controller/PageEventContext;->kind:Lcom/metamoji/df/controller/PageEventContext$Kind;

    return-object v0
.end method

.method public getMoveFromIndex()I
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/metamoji/df/controller/PageEventContext;->kind:Lcom/metamoji/df/controller/PageEventContext$Kind;

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->Moved:Lcom/metamoji/df/controller/PageEventContext$Kind;

    if-ne v0, v1, :cond_0

    .line 192
    iget v0, p0, Lcom/metamoji/df/controller/PageEventContext;->moveFromIndex:I

    return v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getMoveToIndex()I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/metamoji/df/controller/PageEventContext;->kind:Lcom/metamoji/df/controller/PageEventContext$Kind;

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->Moved:Lcom/metamoji/df/controller/PageEventContext$Kind;

    if-ne v0, v1, :cond_0

    .line 202
    iget v0, p0, Lcom/metamoji/df/controller/PageEventContext;->moveToIndex:I

    return v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/metamoji/df/controller/PageEventContext;->numberOfPages:I

    return v0
.end method

.method public getPageInserted()I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/metamoji/df/controller/PageEventContext;->kind:Lcom/metamoji/df/controller/PageEventContext$Kind;

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->Inserted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    if-ne v0, v1, :cond_0

    .line 212
    iget v0, p0, Lcom/metamoji/df/controller/PageEventContext;->pageInserted:I

    return v0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getPagesDeleted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/metamoji/df/controller/PageEventContext;->kind:Lcom/metamoji/df/controller/PageEventContext$Kind;

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->Deleted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/metamoji/df/controller/PageEventContext;->pagesDeleted:Ljava/util/List;

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isCurrentPageIndexChanged()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/metamoji/df/controller/PageEventContext;->currentPageIndexChanged:Z

    return v0
.end method

.method public isNumberOfPagesChanged()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/metamoji/df/controller/PageEventContext;->numberOfPagesChanged:Z

    return v0
.end method
