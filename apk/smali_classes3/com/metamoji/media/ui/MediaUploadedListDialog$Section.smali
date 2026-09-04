.class Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Section"
.end annotation


# instance fields
.field private _items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;",
            ">;"
        }
    .end annotation
.end field

.field private _name:Ljava/lang/String;

.field private _sortKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_items:Ljava/util/List;

    .line 362
    const-string v0, "4"

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_sortKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_items:Ljava/util/List;

    .line 333
    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_sortKey:Ljava/lang/String;

    .line 334
    const-string p2, "-1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 335
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_LocalCabinet:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_name:Ljava/lang/String;

    return-void

    .line 337
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p2

    .line 338
    invoke-virtual {p2, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 341
    sget p2, Lcom/metamoji/noteanytime/R$string;->CabinetSdRootLabel_Text:I

    .line 342
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 341
    const-string p2, "%s > %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_name:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_items:Ljava/util/List;

    .line 347
    iput-object p3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_sortKey:Ljava/lang/String;

    .line 348
    const-string p3, "-1"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 349
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_LocalCabinet:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_name:Ljava/lang/String;

    return-void

    .line 351
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p3

    .line 352
    invoke-virtual {p3, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 355
    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_name:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public items()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_items:Ljava/util/List;

    return-object v0
.end method

.method public sort()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->_items:Ljava/util/List;

    new-instance v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$OrderByStartTime;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$OrderByStartTime;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog-IA;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
