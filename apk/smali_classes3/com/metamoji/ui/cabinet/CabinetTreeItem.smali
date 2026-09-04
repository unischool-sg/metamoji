.class public Lcom/metamoji/ui/cabinet/CabinetTreeItem;
.super Ljava/lang/Object;
.source "CabinetTreeItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATH_ALL_NOTE:Ljava/lang/String; = "?com.metamoji.ui.cabinet.allNote.absPath"

.field private static final PATH_COPIED_SHARE:Ljava/lang/String; = "?com.metamoji.ui.cabinet.copiedShare.absPath"

.field private static final PATH_CRBOX:Ljava/lang/String; = "?com.metamoji.ui.cabinet.CRBox.absPath"

.field private static final PATH_CRBOXOLD:Ljava/lang/String; = "?com.metamoji.ui.cabinet.CRBoxOld.absPath"

.field private static final PATH_CRBOXYEAR:Ljava/lang/String; = "?com.metamoji.ui.cabinet.CRBoxYear.absPath"

.field private static final PATH_RECYCLE_BIN:Ljava/lang/String; = "?com.metamoji.ui.cabinet.recycleBin.absPath"

.field private static final PATH_SEPARATOR:Ljava/lang/String; = "/"

.field private static final PATH_SHARED_DRIVE_ROOT:Ljava/lang/String; = "?com.metamoji.ui.cabinet.sharedDriveRoot.absPath"

.field private static final PATH_TEMPLATE:Ljava/lang/String; = "?com.metamoji.ui.cabinet.template.absPath"


# instance fields
.field private absPath:Ljava/lang/String;

.field private driveId:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private mHashString:Ljava/lang/String;

.field private ownerName:Ljava/lang/String;

.field private tagId:Ljava/lang/String;

.field private type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$1;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->mHashString:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->tagId:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->ownerName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 221
    invoke-static {p1, p2, p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->makeTagId(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->mHashString:Ljava/lang/String;

    .line 248
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 249
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    .line 250
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    .line 251
    iput-object p4, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->tagId:Ljava/lang/String;

    .line 252
    iput-object p5, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    .line 253
    iput-object p6, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->ownerName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->mHashString:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 259
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    .line 261
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->tagId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->tagId:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    .line 263
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->ownerName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->ownerName:Ljava/lang/String;

    return-void
.end method

.method private copyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsAllNote()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 6

    .line 354
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsCRBox(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 7

    .line 393
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsCRBoxClass(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 6

    .line 405
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 409
    :cond_0
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const-string v2, "/"

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsCRBoxOld()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 7

    .line 397
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsCRBoxYear(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 7

    .line 401
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsCopiedShare()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 6

    .line 414
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-static {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0
.end method

.method public static createAsFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 7

    .line 370
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    :cond_0
    move-object v2, v0

    .line 374
    new-instance v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static createAsLocalRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 6

    .line 350
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "/"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsRecycleBin()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsRecycleBin(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0
.end method

.method public static createAsRecycleBin(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 6

    .line 346
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 8

    .line 382
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 386
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    :goto_0
    move-object v3, v1

    .line 387
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object v6

    .line 388
    new-instance v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const-string v4, "/"

    const/4 v7, 0x0

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static createAsSharedDriveRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 6

    .line 378
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsTemplateFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    const/4 v0, 0x0

    .line 358
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0
.end method

.method public static createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 6

    .line 361
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsUnknown()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 6

    .line 418
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createCalendar()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 6

    .line 339
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CALENDAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromAbsPath(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-static {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromAbsPath(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0
.end method

.method public static createFromAbsPath(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    if-eqz p0, :cond_1

    .line 322
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 327
    :cond_2
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 329
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxClass(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0

    .line 331
    :cond_3
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0

    .line 325
    :cond_4
    :goto_1
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsLocalRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0
.end method

.method public static createFromTags(Ljava/util/List;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 314
    invoke-static {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0
.end method

.method public static createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 308
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromAbsPath(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0
.end method

.method public static equalsString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 296
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getCopy(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    .line 301
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-object v0
.end method

.method private getDocumentCountInFolder(Ljava/lang/String;Lcom/metamoji/dvm/fw/DvmDocumentManager;)J
    .locals 5

    .line 642
    invoke-virtual {p2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 644
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDocumentCountInFolder(Ljava/lang/String;Lcom/metamoji/dvm/fw/DvmDocumentManager;)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 647
    :cond_0
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    invoke-direct {v0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;-><init>()V

    .line 648
    sget-object v3, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    const/4 v3, 0x1

    .line 649
    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    .line 650
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v3, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentCount(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)J

    move-result-wide p1

    add-long/2addr v1, p1

    return-wide v1
.end method

.method private getDocumentCountInFolderByMimeType(Ljava/lang/String;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/dvm/fw/DvmDocumentManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 672
    invoke-virtual {p2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 673
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 674
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDocumentCountInFolderByMimeType(Ljava/lang/String;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/util/List;)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 677
    :cond_0
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    invoke-direct {v0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;-><init>()V

    .line 678
    sget-object v3, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    const/4 v3, 0x1

    .line 679
    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    .line 680
    invoke-virtual {v0, p3}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setMimeType(Ljava/util/List;)V

    .line 681
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p3, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentCount(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)J

    move-result-wide p1

    add-long/2addr v1, p1

    return-wide v1
.end method

.method private static makeTagId(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 p2, 0x8

    if-eq p0, p2, :cond_1

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_1
    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 231
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 232
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 284
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 287
    :cond_1
    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 288
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iget-object v3, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    .line 289
    invoke-static {v1, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    .line 290
    invoke-static {v1, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    .line 291
    invoke-static {v1, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public existNote(Ljava/lang/String;)Z
    .locals 4

    .line 658
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 663
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDocumentCountInFolderByMimeType(Ljava/lang/String;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAbsPath()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 506
    :pswitch_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 507
    invoke-virtual {v1, v4, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveGroupAllWithOrderAscending(ZZ)Ljava/util/List;

    move-result-object v1

    .line 508
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_9

    .line 510
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 514
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 516
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    .line 517
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 520
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    .line 522
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxYear(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    :pswitch_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v4}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 534
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 535
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxClass(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 545
    :pswitch_2
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 547
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 549
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    .line 548
    invoke-static {v2, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 551
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v2, :cond_9

    .line 556
    :cond_4
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_5

    .line 557
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    if-eqz v1, :cond_5

    return-object v0

    .line 563
    :cond_5
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsRecycleBin(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 489
    :pswitch_3
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 491
    invoke-virtual {v1, v3, v4, v4}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 492
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 493
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 466
    :cond_6
    :pswitch_4
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 467
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 468
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 469
    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 471
    :cond_7
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v3, :cond_9

    .line 475
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppClearCopiedShareNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 476
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 477
    const-string v3, "MMJCopiedShare"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 478
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCopiedShare()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_8
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsRecycleBin()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDescendantNoteCount()I
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 619
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 621
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDocumentCountInFolder(Ljava/lang/String;Lcom/metamoji/dvm/fw/DvmDocumentManager;)J

    move-result-wide v0

    :goto_0
    long-to-int v0, v0

    return v0

    .line 609
    :cond_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 611
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDocumentCountInFolder(Ljava/lang/String;Lcom/metamoji/dvm/fw/DvmDocumentManager;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxClass(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 583
    :cond_2
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsLocalRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelName()Ljava/lang/String;
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->ownerName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 450
    :pswitch_1
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxOld()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 435
    :pswitch_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 437
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 438
    invoke-virtual {v1, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupNameByGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBox(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxYear(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 441
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDriveRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 426
    :pswitch_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 428
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 430
    :cond_2
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromAbsPath(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 448
    :pswitch_4
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsLocalRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 445
    :pswitch_5
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsLocalRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getTagId()Ljava/lang/String;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->tagId:Ljava/lang/String;

    return-object v0

    .line 124
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CABINET_CALENDAR:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_CopiedShare:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->UI_Cabinet_PastClassBox:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$string;->UI_Cabinet_ClassBox:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$string;->UI_Cabinet_SharedBox:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_5
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoteTemplate_Title:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_RecycleBin:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_7
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_All:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_8
    sget v0, Lcom/metamoji/noteanytime/R$string;->UI_Cabinet_PrivateBox:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsObject()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getTagNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-object v0
.end method

.method public getUniquePath()Ljava/lang/String;
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    const-string v1, "?com.metamoji.ui.cabinet.sharedDriveRoot.absPath"

    const-string v2, "%s/%s"

    packed-switch v0, :pswitch_data_0

    .line 215
    :pswitch_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :pswitch_1
    const-string v0, "?com.metamoji.ui.cabinet.copiedShare.absPath"

    return-object v0

    .line 206
    :pswitch_2
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?com.metamoji.ui.cabinet.CRBoxYear.absPath"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    .line 204
    :pswitch_3
    const-string v0, "?com.metamoji.ui.cabinet.CRBoxOld.absPath"

    return-object v0

    .line 202
    :pswitch_4
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?com.metamoji.ui.cabinet.CRBox.absPath"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    .line 211
    :pswitch_5
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    return-object v1

    .line 196
    :pswitch_7
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?com.metamoji.ui.cabinet.template.absPath"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1

    .line 198
    :pswitch_8
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?com.metamoji.ui.cabinet.recycleBin.absPath"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    .line 191
    :pswitch_9
    const-string v0, "?com.metamoji.ui.cabinet.allNote.absPath"

    return-object v0

    .line 194
    :pswitch_a
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->mHashString:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v3, v1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->mHashString:Ljava/lang/String;

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->mHashString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLineal(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v0

    .line 748
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p1

    .line 749
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 750
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 752
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public isSameDrive(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSharedDrive()Z
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTagEdittingAcceptable()Z
    .locals 2

    .line 708
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 709
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public needUpdateDrive()Z
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->tagId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->absPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->driveId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->tagId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->groupId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->ownerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
