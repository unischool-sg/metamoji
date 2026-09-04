.class public final Lcom/metamoji/ui/BulkImportActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "BulkImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/BulkImportActivity$AtdocFilter;
    }
.end annotation


# static fields
.field public static final KEY_DESTINATION_ID:Ljava/lang/String; = "destination"

.field public static final KEY_DOC_IDS:Ljava/lang/String; = "docids"

.field public static final KEY_DRIVE_ID:Ljava/lang/String; = "drive"

.field public static final KEY_IS_EXPORT:Ljava/lang/String; = "isExport"

.field public static final KEY_SOURCE_ID:Ljava/lang/String; = "source"

.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field private static final _export_extensions:[Ljava/lang/String;


# instance fields
.field private compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

.field final mAtdocFilter:Lcom/metamoji/ui/BulkImportActivity$AtdocFilter;

.field private mBack:Lcom/metamoji/ui/common/UiButton;

.field private mCancel:Z

.field private mDealt:I

.field private mDestId:Ljava/lang/String;

.field private mDone:Z

.field private mDriveId:Ljava/lang/String;

.field private mEachBar:Landroid/widget/ProgressBar;

.field private mEachMessage:Landroid/widget/TextView;

.field private mIsExport:Z

.field private mProgressUI:Lcom/metamoji/nt/INtProgressUI;

.field private mReports:Landroid/widget/TextView;

.field private mScroller:Landroid/widget/ScrollView;

.field private mSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBar:Landroid/widget/ProgressBar;

.field private mTotalMessage:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$hE2Bft2lHuP5U8lEpyAjawl_hZ8(Lcom/metamoji/ui/BulkImportActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/BulkImportActivity;->lambda$onCreate$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBack(Lcom/metamoji/ui/BulkImportActivity;)Lcom/metamoji/ui/common/UiButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mBack:Lcom/metamoji/ui/common/UiButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancel(Lcom/metamoji/ui/BulkImportActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mCancel:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDealt(Lcom/metamoji/ui/BulkImportActivity;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDealt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDriveId(Lcom/metamoji/ui/BulkImportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDriveId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEachBar(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mEachBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEachMessage(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mEachMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsExport(Lcom/metamoji/ui/BulkImportActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mIsExport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReports(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mReports:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScroller(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mScroller:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSource(Lcom/metamoji/ui/BulkImportActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mSource:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalBar(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mTotalBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalMessage(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/BulkImportActivity;->mTotalMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCancel(Lcom/metamoji/ui/BulkImportActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/BulkImportActivity;->mCancel:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDealt(Lcom/metamoji/ui/BulkImportActivity;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/BulkImportActivity;->mDealt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mexportFiles(Lcom/metamoji/ui/BulkImportActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/BulkImportActivity;->exportFiles()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexportSingleFile(Lcom/metamoji/ui/BulkImportActivity;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/BulkImportActivity;->exportSingleFile(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mimportAtdocs(Lcom/metamoji/ui/BulkImportActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/BulkImportActivity;->importAtdocs()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 690
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".atdoc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".btshare"

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/ui/BulkImportActivity;->_export_extensions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDone:Z

    .line 94
    iput-boolean v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mCancel:Z

    .line 95
    iput v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDealt:I

    .line 97
    new-instance v0, Lcom/metamoji/ui/BulkImportActivity$AtdocFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/BulkImportActivity$AtdocFilter;-><init>(Lcom/metamoji/ui/BulkImportActivity-IA;)V

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mAtdocFilter:Lcom/metamoji/ui/BulkImportActivity$AtdocFilter;

    .line 108
    new-instance v0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    .line 620
    new-instance v0, Lcom/metamoji/ui/BulkImportActivity$8;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/BulkImportActivity$8;-><init>(Lcom/metamoji/ui/BulkImportActivity;)V

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mProgressUI:Lcom/metamoji/nt/INtProgressUI;

    return-void
.end method

.method public static doExport(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 1

    .line 698
    new-instance v0, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {v0}, Lcom/metamoji/ui/task/GetFileTask;->getDirectory(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static doExport(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 744
    new-instance v0, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/metamoji/ui/task/GetFileTask;->getDirectory(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static doImport(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    .line 790
    new-instance p0, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {p0}, Lcom/metamoji/ui/task/GetFileTask;->getDirectory(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private exportFiles()V
    .locals 5

    .line 396
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDriveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/BulkImportActivity;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    .line 400
    iget-object v3, p0, Lcom/metamoji/ui/BulkImportActivity;->mTotalBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 403
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ui/BulkImportActivity$3;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/metamoji/ui/BulkImportActivity$3;-><init>(Lcom/metamoji/ui/BulkImportActivity;Lcom/metamoji/sd/SdDriveDocumentManager;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/StringBuffer;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private exportSingleFile(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isCollabo()Z

    move-result v8

    .line 351
    invoke-static {p2}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v8, :cond_0

    .line 352
    const-string v0, ".btshare"

    goto :goto_0

    :cond_0
    const-string v0, ".atdoc"

    :goto_0
    if-eqz v8, :cond_1

    .line 353
    const-string v1, "application/vnd.metamoji.btshare"

    goto :goto_1

    :cond_1
    const-string v1, "application/vnd.metamoji.atdoc"

    .line 355
    :goto_1
    invoke-static {p3, p2, v0, v1}, Lcom/metamoji/ui/task/GetFileTask;->getUniqueFilenameDocument(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    .line 357
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getHashedPassword()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 360
    invoke-static {p3}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->checkPassword(Ljava/lang/String;)Lcom/metamoji/cm/PBE;

    move-result-object p3

    if-eqz p3, :cond_2

    move-object v6, p3

    goto :goto_2

    .line 362
    :cond_2
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string p3, "BX0001"

    const-string v0, "authentication is canceled."

    sget-object v1, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v1

    invoke-direct {p2, p3, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p2

    :cond_3
    move-object v6, v0

    .line 367
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/metamoji/dvm/DvmUtil;->hasVoice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "export error"

    const-string v11, "BX0002"

    if-eqz p3, :cond_5

    .line 368
    :try_start_1
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->downloadDownloadableRecordings(Lcom/metamoji/df/model/IModel;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_3

    .line 371
    :cond_4
    new-instance p2, Lcom/metamoji/cm/CmException;

    invoke-direct {p2, v11, v10}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_3
    move-object p3, v0

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 378
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p3, v2, p3}, Lcom/metamoji/nt/NtDocument;->attachmentTicketsForExportingAsHayabusadoc(Lcom/metamoji/df/model/IModel;ZLjava/lang/String;ZLjava/util/Map;)Ljava/util/HashSet;

    move-result-object p3

    .line 379
    const-string v1, "attachmentTickets"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string p3, "included-recordings"

    sget-object v1, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/metamoji/ui/BulkImportActivity;->mProgressUI:Lcom/metamoji/nt/INtProgressUI;

    const/4 v9, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;ZLandroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;ZZ)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_6

    .line 388
    sget-object p2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    return-void

    .line 385
    :cond_6
    :try_start_2
    new-instance p2, Lcom/metamoji/cm/CmException;

    invoke-direct {p2, v11, v10}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 388
    sget-object p3, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p1, p3}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    .line 389
    throw p2
.end method

.method private importAtdocs()V
    .locals 10

    .line 273
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDestId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getTagNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 274
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity;->mTotalBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 278
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity;->mSource:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v1, v7

    :goto_0
    if-ge v1, v8, :cond_2

    .line 279
    iget-boolean v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mCancel:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v9, v1, 0x1

    .line 283
    invoke-virtual {p0, v9, v8}, Lcom/metamoji/ui/BulkImportActivity;->updateTotalText(II)V

    .line 284
    iget-object v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mSource:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/documentfile/provider/DocumentFile;

    const/4 v2, 0x0

    .line 288
    :try_start_0
    invoke-static {v1}, Lcom/metamoji/ui/task/GetFileTask;->copyUriToTempFile(Landroidx/documentfile/provider/DocumentFile;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mEachBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/BulkImportActivity;->updateEachText(Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mProgressUI:Lcom/metamoji/nt/INtProgressUI;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/metamoji/nt/NtDocument;->importHayabusaDoc(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/ArrayList;Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_Succeeded:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    iget-object v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mEachBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-static {v1}, Lcom/metamoji/ui/task/GetFileTask;->safeDelete(Ljava/io/File;)V

    goto :goto_2

    .line 295
    :cond_1
    :try_start_2
    new-instance v2, Lcom/metamoji/cm/CmException;

    const-string v4, "no docid"

    invoke-direct {v2, v4}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_0
    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 299
    :catch_1
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_Failed:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    invoke-static {v2}, Lcom/metamoji/ui/task/GetFileTask;->safeDelete(Ljava/io/File;)V

    move-object v1, v2

    .line 304
    :goto_2
    iget v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mDealt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mDealt:I

    .line 305
    iget-object v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mTotalBar:Landroid/widget/ProgressBar;

    const/high16 v4, 0x42c80000    # 100.0f

    int-to-float v5, v9

    mul-float/2addr v5, v4

    int-to-float v4, v8

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 307
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/BulkImportActivity;->report(Ljava/lang/String;)V

    move v1, v9

    goto/16 :goto_0

    .line 302
    :goto_3
    invoke-static {v2}, Lcom/metamoji/ui/task/GetFileTask;->safeDelete(Ljava/io/File;)V

    .line 303
    throw v0

    .line 312
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->done()V

    return-void
.end method

.method static synthetic lambda$doExport$1(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 3

    if-eqz p2, :cond_0

    .line 700
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/ui/BulkImportActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 701
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    const-string v1, "isExport"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 703
    const-string/jumbo v1, "source"

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 705
    const-string p2, "drive"

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$doExport$2(Ljava/util/ArrayList;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 3

    if-eqz p3, :cond_0

    .line 746
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/ui/BulkImportActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 747
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v1, "isExport"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 749
    const-string v1, "docids"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 750
    const-string/jumbo p0, "uri"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 751
    const-string p0, "drive"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$doImport$3(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 3

    if-eqz p2, :cond_0

    .line 792
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/ui/BulkImportActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 793
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const-string v1, "isExport"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 795
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 796
    const-string p2, "destination"

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const-string p2, "drive"

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onCreate$0()Lkotlin/Unit;
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/metamoji/ui/BulkImportActivity;->onBackKeyPressed()Z

    .line 132
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private listAtdocsInDirectory(Landroidx/documentfile/provider/DocumentFile;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/documentfile/provider/DocumentFile;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 257
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 258
    aget-object v2, p1, v1

    .line 259
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    invoke-direct {p0, v2, p2}, Lcom/metamoji/ui/BulkImportActivity;->listAtdocsInDirectory(Landroidx/documentfile/provider/DocumentFile;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 262
    :cond_0
    invoke-static {v2}, Lcom/metamoji/ui/task/GetFileTask;->isMetaMoJiType(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private listNotesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    invoke-static {p2, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromAbsPath(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    const/4 v0, 0x0

    .line 330
    invoke-static {p2, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 333
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/metamoji/ui/BulkImportActivity;->listNotesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private onBackKeyPressed()Z
    .locals 4

    .line 649
    iget-boolean v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDone:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 650
    iget-boolean v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mCancel:Z

    if-nez v0, :cond_2

    .line 651
    iget-boolean v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mIsExport:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Query_CancelExport:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Query_CancelImport:I

    :goto_0
    iget-boolean v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mIsExport:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/metamoji/noteanytime/R$string;->Menu_ExportNote:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/metamoji/noteanytime/R$string;->Menu_ImportNote:I

    :goto_1
    new-instance v3, Lcom/metamoji/ui/BulkImportActivity$9;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/BulkImportActivity$9;-><init>(Lcom/metamoji/ui/BulkImportActivity;)V

    invoke-static {v0, v2, v3, v1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method done()V
    .locals 2

    .line 601
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 602
    iput-boolean v1, p0, Lcom/metamoji/ui/BulkImportActivity;->mDone:Z

    .line 603
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mBack:Lcom/metamoji/ui/common/UiButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 605
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->updateEachTextDone()V

    return-void

    .line 607
    :cond_0
    new-instance v1, Lcom/metamoji/ui/BulkImportActivity$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/BulkImportActivity$7;-><init>(Lcom/metamoji/ui/BulkImportActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finish()V
    .locals 2

    .line 857
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->finish()V

    .line 858
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->getInstance()Lcom/metamoji/ui/cabinet/user/NoteListObserver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->notifyRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 675
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 676
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/BulkImportActivity;->onBackKeyPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 686
    :cond_1
    :goto_0
    invoke-super {p0, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 116
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 119
    invoke-static {p0}, Lcom/metamoji/nt/NtStartup;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    .line 120
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 121
    sget v0, Lcom/metamoji/noteanytime/R$layout;->activity_bulk_import:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->setContentView(I)V

    .line 123
    sget v0, Lcom/metamoji/noteanytime/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->setupWindowInsetsListener(Landroid/view/View;)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    new-instance v1, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/BulkImportActivity$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/BulkImportActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->register(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function0;)V

    .line 135
    sget v0, Lcom/metamoji/noteanytime/R$id;->progress_bar_each:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mEachBar:Landroid/widget/ProgressBar;

    .line 136
    sget v0, Lcom/metamoji/noteanytime/R$id;->progress_bar_total:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mTotalBar:Landroid/widget/ProgressBar;

    .line 137
    sget v0, Lcom/metamoji/noteanytime/R$id;->each_text:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mEachMessage:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/metamoji/noteanytime/R$id;->total_text:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mTotalMessage:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/metamoji/noteanytime/R$id;->report_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mReports:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/metamoji/noteanytime/R$id;->report_scroller:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mScroller:Landroid/widget/ScrollView;

    .line 141
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_return:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mBack:Lcom/metamoji/ui/common/UiButton;

    .line 142
    new-instance v1, Lcom/metamoji/ui/BulkImportActivity$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/BulkImportActivity$1;-><init>(Lcom/metamoji/ui/BulkImportActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_4

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 155
    const-string v0, "isExport"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mIsExport:Z

    .line 156
    const-string v0, "destination"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDestId:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "drive"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/BulkImportActivity;->mDriveId:Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/metamoji/ui/BulkImportActivity;->mUri:Landroid/net/Uri;

    .line 160
    const-string v1, "docids"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 161
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mSource:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 168
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/ui/BulkImportActivity;->mIsExport:Z

    if-eqz p1, :cond_2

    .line 170
    iget-object p1, p0, Lcom/metamoji/ui/BulkImportActivity;->mDriveId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/metamoji/ui/BulkImportActivity;->listNotesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/metamoji/ui/BulkImportActivity;->listAtdocsInDirectory(Landroidx/documentfile/provider/DocumentFile;Ljava/util/ArrayList;)V

    .line 179
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/BulkImportActivity$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/BulkImportActivity$2;-><init>(Lcom/metamoji/ui/BulkImportActivity;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 198
    :catch_0
    iget-object p1, p0, Lcom/metamoji/ui/BulkImportActivity;->mReports:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/ui/BulkImportActivity;->mIsExport:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_ImportNoteError:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->done()V

    :cond_4
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 843
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 844
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 847
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 834
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 835
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method report(Ljava/lang/String;)V
    .locals 2

    .line 579
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mReports:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 583
    :cond_0
    new-instance v1, Lcom/metamoji/ui/BulkImportActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/BulkImportActivity$6;-><init>(Lcom/metamoji/ui/BulkImportActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateEachText(Ljava/lang/String;)V
    .locals 3

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/metamoji/ui/BulkImportActivity;->mIsExport:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_Exporting:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_Importing:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/BulkImportActivity;->updateEachTextSub(Ljava/lang/String;)V

    return-void
.end method

.method updateEachTextCancelling()V
    .locals 2

    .line 538
    iget v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDealt:I

    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity;->mSource:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_Cancelling:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->updateEachTextSub(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateEachTextDone()V
    .locals 2

    .line 547
    iget-boolean v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mCancel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mDealt:I

    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity;->mSource:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_Cancelled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/BulkImportActivity;->updateEachTextSub(Ljava/lang/String;)V

    return-void
.end method

.method updateEachTextSub(Ljava/lang/String;)V
    .locals 2

    .line 512
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity;->mEachMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 516
    :cond_0
    new-instance v1, Lcom/metamoji/ui/BulkImportActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/BulkImportActivity$4;-><init>(Lcom/metamoji/ui/BulkImportActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateTotalText(II)V
    .locals 4

    .line 558
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_Note:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    .line 561
    invoke-virtual {p2}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object p2, p0, Lcom/metamoji/ui/BulkImportActivity;->mTotalMessage:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 564
    :cond_0
    new-instance v0, Lcom/metamoji/ui/BulkImportActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/BulkImportActivity$5;-><init>(Lcom/metamoji/ui/BulkImportActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
