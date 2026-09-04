.class Lcom/metamoji/lb/LbShareItem;
.super Lcom/metamoji/lb/LbShare;
.source "LbShare.java"


# static fields
.field private static _instanceItem:Lcom/metamoji/lb/LbShareItem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/metamoji/lb/LbShare;-><init>()V

    return-void
.end method

.method public static dataMimeType()Ljava/lang/String;
    .locals 1

    .line 414
    const-string v0, "application/vnd.metamoji.model.item.cr"

    return-object v0
.end method

.method public static dataModelType()Ljava/lang/String;
    .locals 1

    .line 418
    const-string v0, "$item.cr"

    return-object v0
.end method

.method public static dataModelVer()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/metamoji/lb/LbShareItem;
    .locals 1

    .line 445
    sget-object v0, Lcom/metamoji/lb/LbShareItem;->_instanceItem:Lcom/metamoji/lb/LbShareItem;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lcom/metamoji/lb/LbShareItem;

    invoke-direct {v0}, Lcom/metamoji/lb/LbShareItem;-><init>()V

    sput-object v0, Lcom/metamoji/lb/LbShareItem;->_instanceItem:Lcom/metamoji/lb/LbShareItem;

    .line 447
    :cond_0
    sget-object v0, Lcom/metamoji/lb/LbShareItem;->_instanceItem:Lcom/metamoji/lb/LbShareItem;

    return-object v0
.end method

.method public static indexMimeType()Ljava/lang/String;
    .locals 1

    .line 426
    const-string v0, "application/vnd.metamoji.model.item-index.cr"

    return-object v0
.end method

.method public static indexModelType()Ljava/lang/String;
    .locals 1

    .line 430
    const-string v0, "$itemidx.cr"

    return-object v0
.end method

.method public static indexModelVer()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static indexTitle()Ljava/lang/String;
    .locals 1

    .line 438
    const-string v0, "ItemIndex"

    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .locals 1

    .line 453
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->dataMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexMimeType()Ljava/lang/String;
    .locals 1

    .line 459
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->indexMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexModelType()Ljava/lang/String;
    .locals 1

    .line 465
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->indexModelType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexModelVer()I
    .locals 1

    .line 471
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->indexModelVer()I

    move-result v0

    return v0
.end method

.method public getIndexTitle()Ljava/lang/String;
    .locals 1

    .line 477
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->indexTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
