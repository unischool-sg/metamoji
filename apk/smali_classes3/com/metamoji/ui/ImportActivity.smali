.class public final Lcom/metamoji/ui/ImportActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "ImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/ImportActivity$IImportModeResult;,
        Lcom/metamoji/ui/ImportActivity$CancelException;,
        Lcom/metamoji/ui/ImportActivity$ImportBgTask;
    }
.end annotation


# static fields
.field public static final KEY_CloseDocument:Ljava/lang/String; = "closeDocument"

.field public static final KEY_ImportedDocId:Ljava/lang/String; = "importedDocId"

.field public static final KEY_InsertDocument:Ljava/lang/String; = "insertDocument"

.field public static final KEY_Insertable:Ljava/lang/String; = "insertable"

.field public static final KEY_ShowCancelButton:Ljava/lang/String; = "showCancelButton"

.field public static final OPTKEY_EDITOR_EXTERNAL_COMMAND:Ljava/lang/String; = "import:editorExternalCommand"

.field private static final OPTKEY_ERROR_MESSAGE:Ljava/lang/String; = "import:errorMessage"

.field private static final OPTKEY_FILENAME:Ljava/lang/String; = "import:filename"


# instance fields
.field private _bar:Landroid/widget/ProgressBar;

.field _pdf_import_error:Z

.field private final _progressUI:Lcom/metamoji/ui/INtProgressUIEx;

.field doImportImage:Z

.field doImportPdf:Z

.field m_lockThread:Ljava/lang/Object;

.field m_lockThreadForImage:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fget_progressUI(Lcom/metamoji/ui/ImportActivity;)Lcom/metamoji/ui/INtProgressUIEx;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoImport(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ImportActivity;->doImport(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoImportImage(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ImportActivity;->doImportImage(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSrcInfo(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ImportActivity;->getSrcInfo(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mimportAudio(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importAudio(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mimportFile(Lcom/metamoji/ui/ImportActivity;Lcom/metamoji/noteanytime/cm/IntentContent;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importFile(Lcom/metamoji/noteanytime/cm/IntentContent;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mimportImage(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importImage(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mimportVideo(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importVideo(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monFailure(Lcom/metamoji/ui/ImportActivity;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/ImportActivity;->onFailure(ZLjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportError(Lcom/metamoji/ui/ImportActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ImportActivity;->reportError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    .line 852
    sget-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->INSTANCE:Lcom/metamoji/ui/ImportActivityProgressUI;

    iput-object v0, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    const/4 v0, 0x0

    .line 1074
    iput-boolean v0, p0, Lcom/metamoji/ui/ImportActivity;->_pdf_import_error:Z

    .line 1075
    iput-boolean v0, p0, Lcom/metamoji/ui/ImportActivity;->doImportPdf:Z

    .line 1284
    iput-boolean v0, p0, Lcom/metamoji/ui/ImportActivity;->doImportImage:Z

    return-void
.end method

.method public static CreateIntent(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1527
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/ui/ImportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1528
    const-string p0, "android.intent.action.VIEW"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static StartImport(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1533
    invoke-static {p0, p1}, Lcom/metamoji/ui/ImportActivity;->CreateIntent(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static StartInsert(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1537
    invoke-static {p0, p1}, Lcom/metamoji/ui/ImportActivity;->CreateIntent(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 1538
    const-string v0, "insertDocument"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1539
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static availableFileExtensions()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    const-string v1, ".pdf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getHayabusaDocExt()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 146
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_0
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v1, ".m4a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private confirmToCloseSendBackTargetDocument()Ljava/lang/String;
    .locals 3

    .line 451
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 455
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 460
    :cond_1
    const-string/jumbo v2, "srcInfo"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtNoteController;->getEditValueAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->isSendToSrcAppTarget(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 465
    :cond_2
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 466
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    .line 468
    :cond_4
    :goto_0
    const-string v1, "package"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doImport(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 2

    .line 523
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/ImportActivity$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/ImportActivity$9;-><init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private doImportAudio(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 2

    .line 738
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/ImportActivity$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/ImportActivity$11;-><init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private doImportImage(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 2

    .line 638
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/ImportActivity$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/ImportActivity$10;-><init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private getSrcInfo(Landroid/content/Intent;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 502
    invoke-static {p1}, Lcom/metamoji/ui/ImportActivity;->isCustomEditAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 505
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 506
    const-string/jumbo v1, "srcname"

    .line 507
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string/jumbo v1, "sendbackapp"

    .line 509
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    const-string v2, "package"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string/jumbo v1, "sendbackclass"

    .line 511
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    const-string v2, "class"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string/jumbo v1, "sendbackformat"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 515
    const-string v2, "discard"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 514
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private importAudio(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/ui/ImportActivity$CancelException;
        }
    .end annotation

    .line 1126
    const-string v0, "m4a"

    const/4 v1, 0x0

    .line 1129
    :try_start_0
    const-string v2, "_image_work"

    const-string v3, ".state"

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1130
    :try_start_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/nt/NtDocumentTemplate;->newDocument(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    .line 1132
    :try_start_2
    const-string v0, "failed to load audio"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 1189
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_0
    if-eqz v2, :cond_1

    .line 1192
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_1
    return-object v1

    .line 1141
    :cond_2
    :try_start_3
    const-string v4, "convertedAudio"

    invoke-static {v4, v0}, Lcom/metamoji/dm/fw/DmUtils;->createTempFileWithPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1142
    const-string/jumbo v4, "tempAudio"

    invoke-static {v4, v0}, Lcom/metamoji/dm/fw/DmUtils;->createTempFileWithPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1144
    new-instance v4, Lcom/metamoji/media/voice/converter/VcAudioConverter;

    move-object/from16 v5, p1

    invoke-direct {v4, v5, v7, v0}, Lcom/metamoji/media/voice/converter/VcAudioConverter;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 1145
    invoke-virtual {v4}, Lcom/metamoji/media/voice/converter/VcAudioConverter;->convert()V

    .line 1146
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1148
    new-instance v11, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {v11, v0, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    move-object v5, v11

    .line 1150
    invoke-static/range {p1 .. p1}, Lcom/metamoji/media/voice/VcUtil;->getDuration(Ljava/io/File;)D

    move-result-wide v10

    .line 1151
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->makeTicket()Ljava/lang/String;

    move-result-object v12

    .line 1152
    new-instance v9, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-direct {v9, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 1153
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1154
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1155
    const-string v4, "pageId"

    invoke-interface {v0, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v8, 0x0

    move-object v6, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1157
    invoke-virtual/range {v5 .. v16}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->registerRecording(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Date;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 1159
    invoke-virtual {v5, v6, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setHiddenRecording(Ljava/lang/String;Z)V

    .line 1161
    new-instance v0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;

    invoke-direct {v0, v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 1162
    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V

    .line 1163
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDefaultDocumentTitle()Ljava/lang/String;

    move-result-object v14

    .line 1164
    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4, v14}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1165
    new-instance v0, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v0}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {v3, v0}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    move-object/from16 v0, p3

    .line 1166
    invoke-static {v2, v1, v0}, Lcom/metamoji/nt/NtDocument;->importDocumentBinary(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 1167
    invoke-virtual {v5, v6}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1168
    invoke-virtual {v5, v6}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1170
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v8, Lcom/metamoji/ui/ImportActivity$13;

    move-object/from16 v9, p0

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v8 .. v15}, Lcom/metamoji/ui/ImportActivity$13;-><init>(Lcom/metamoji/ui/ImportActivity;Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    .line 1189
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_3
    if-eqz v2, :cond_4

    .line 1192
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_4
    return-object v15

    :cond_5
    if-eqz v3, :cond_6

    .line 1189
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_6
    if-eqz v2, :cond_7

    .line 1192
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_7
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 1184
    :goto_0
    :try_start_4
    const-string v4, "import image error."

    invoke-static {v0, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_8

    .line 1189
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_8
    if-eqz v2, :cond_9

    .line 1192
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_9
    return-object v1

    :catchall_3
    move-exception v0

    if-eqz v3, :cond_a

    .line 1189
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_a
    if-eqz v2, :cond_b

    .line 1192
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 1194
    :cond_b
    throw v0
.end method

.method private importAudio(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 2

    .line 1453
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1454
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1455
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1457
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ImportActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private importFile(Lcom/metamoji/noteanytime/cm/IntentContent;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/noteanytime/cm/IntentContent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/ui/ImportActivity$CancelException;
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 890
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 894
    :cond_0
    const-string v3, "import:filename"

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 897
    :try_start_0
    const-string v5, "application/vnd.metamoji.atdoc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "application/atdoc"

    .line 898
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "application/vnd.metamoji.btshare"

    .line 899
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "application/btshare"

    .line 900
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_0

    .line 903
    :cond_1
    const-string v5, "application/pdf"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 904
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_Import_PDF_Importing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/INtProgressUIEx;->setProgressText(Ljava/lang/String;)V

    .line 905
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-direct {p0, v1, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importPdf(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    iget-object p2, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-interface {p2}, Lcom/metamoji/ui/INtProgressUIEx;->finish()V

    .line 932
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object p2

    .line 933
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 934
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_2
    return-object p1

    .line 908
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 909
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-direct {p0, v1, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importImage(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    iget-object p2, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-interface {p2}, Lcom/metamoji/ui/INtProgressUIEx;->finish()V

    .line 932
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object p2

    .line 933
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 934
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_4
    return-object p1

    .line 910
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 911
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_Converting:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/INtProgressUIEx;->setProgressText(Ljava/lang/String;)V

    .line 912
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-direct {p0, v1, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importAudio(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 928
    iget-object p2, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-interface {p2}, Lcom/metamoji/ui/INtProgressUIEx;->finish()V

    .line 932
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object p2

    .line 933
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 934
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_6
    return-object p1

    .line 913
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 914
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-direct {p0, v1, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importVideo(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 928
    iget-object p2, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-interface {p2}, Lcom/metamoji/ui/INtProgressUIEx;->finish()V

    .line 932
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object p2

    .line 933
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 934
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_8
    return-object p1

    .line 917
    :cond_9
    :try_start_4
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 918
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 919
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 920
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 921
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-direct {p0, v1, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importImage(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 928
    iget-object p2, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-interface {p2}, Lcom/metamoji/ui/INtProgressUIEx;->finish()V

    .line 932
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object p2

    .line 933
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 934
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_a
    return-object p1

    :catch_0
    move-exception p1

    .line 924
    :try_start_5
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 928
    :cond_b
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-interface {p1}, Lcom/metamoji/ui/INtProgressUIEx;->finish()V

    .line 932
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object p1

    .line 933
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 934
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_c
    return-object v2

    .line 901
    :cond_d
    :goto_0
    :try_start_6
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_Import_Note_Importing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/INtProgressUIEx;->setProgressText(Ljava/lang/String;)V

    .line 902
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-direct {p0, v1, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importHayabusaDoc(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 928
    iget-object p2, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-interface {p2}, Lcom/metamoji/ui/INtProgressUIEx;->finish()V

    .line 932
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object p2

    .line 933
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 934
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_e
    return-object p1

    :catchall_0
    move-exception p1

    .line 928
    iget-object p2, p0, Lcom/metamoji/ui/ImportActivity;->_progressUI:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-interface {p2}, Lcom/metamoji/ui/INtProgressUIEx;->finish()V

    .line 932
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->getImportTempFolder(Z)Ljava/io/File;

    move-result-object p2

    .line 933
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 934
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 936
    :cond_f
    throw p1
.end method

.method private importFileWithConvertingByRemoteConverter(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/ui/ImportActivity$CancelException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1329
    const-string v0, "application/pdf"

    const-string v4, "errorCode"

    .line 1337
    :try_start_0
    new-instance v6, Lcom/metamoji/ui/ImportActivity$ImportBgTask;

    invoke-direct {v6, v1}, Lcom/metamoji/ui/ImportActivity$ImportBgTask;-><init>(Lcom/metamoji/ui/ImportActivity;)V

    const/4 v7, 0x0

    .line 1339
    invoke-interface {v2, v7}, Lcom/metamoji/nt/INtProgressUI;->progress(F)V

    .line 1343
    new-instance v7, Lcom/metamoji/rc/RcTentativeRegistURLConnection;

    invoke-direct {v7, v6}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 1344
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v8

    .line 1345
    invoke-virtual {v8}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v8

    .line 1346
    iget-object v9, v8, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->setUserId(Ljava/lang/String;)V

    .line 1347
    iget-object v8, v8, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->setPassword(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v7}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v8

    .line 1349
    invoke-static {v8, v4}, Lcom/metamoji/ui/ImportActivity;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1350
    const-string v10, "errorMessage"

    if-eqz v9, :cond_8

    :try_start_1
    sget-object v11, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->GENERAL_RESPONSE_ERROR_CODE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1356
    sget-object v7, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->TENTATIVE_REGIST_RESPONSE_KEY_JOB_ID_1:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/metamoji/ui/ImportActivity;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1357
    sget-object v9, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->TENTATIVE_REGIST_RESPONSE_KEY_JOB_ID_2:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/metamoji/ui/ImportActivity;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x3e4ccccd    # 0.2f

    .line 1359
    invoke-interface {v2, v9}, Lcom/metamoji/nt/INtProgressUI;->progress(F)V

    .line 1363
    const-string v9, "import:filename"

    invoke-static {v3, v9}, Lcom/metamoji/ui/ImportActivity;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v9, :cond_0

    .line 1364
    :try_start_2
    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_0
    :try_start_3
    const-string v9, ""

    .line 1366
    :goto_1
    new-instance v11, Lcom/metamoji/rc/RcConvertRequestURLConnection;

    invoke-direct {v11, v6}, Lcom/metamoji/rc/RcConvertRequestURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 1367
    invoke-virtual {v11, v7}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->setJobId1(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v11, v8}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->setJobId2(Ljava/lang/String;)V

    move-object/from16 v12, p4

    .line 1369
    invoke-virtual {v11, v12}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->setFromMime(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v11, v9}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->setFromSuffix(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v11, v0}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->setToMime(Ljava/lang/String;)V

    .line 1372
    const-string v9, ".pdf"

    invoke-virtual {v11, v9}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->setToSuffix(Ljava/lang/String;)V

    move-object/from16 v9, p1

    .line 1373
    invoke-virtual {v11, v9}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->setFile(Ljava/io/File;)V

    .line 1374
    invoke-virtual {v11}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v9

    .line 1375
    invoke-static {v9, v4}, Lcom/metamoji/ui/ImportActivity;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 1376
    sget-object v13, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->GENERAL_RESPONSE_ERROR_CODE_SUCCESS:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const v9, 0x3f19999a    # 0.6f

    .line 1382
    invoke-interface {v2, v9}, Lcom/metamoji/nt/INtProgressUI;->progress(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v9, 0x0

    const/4 v11, 0x0

    :cond_1
    const-wide/16 v12, 0x7d0

    .line 1388
    :try_start_4
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 1391
    new-instance v12, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;

    invoke-direct {v12, v6}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 1392
    invoke-virtual {v12, v7}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->setJobId1(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v12, v8}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->setJobId2(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v12, v0}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->setToMime(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v12}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->downloadFileOrResponseJsonFromRequest()Ljava/lang/Object;

    move-result-object v13

    .line 1397
    instance-of v14, v13, Ljava/util/Map;

    if-eqz v14, :cond_4

    .line 1399
    move-object v14, v13

    check-cast v14, Ljava/util/Map;

    .line 1400
    invoke-static {v14, v4}, Lcom/metamoji/ui/ImportActivity;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v15, :cond_2

    const/16 v16, 0x0

    .line 1401
    :try_start_5
    sget-object v5, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->GET_CONVERTED_FILE_RESPONSE_ERROR_CODE_CONVERTING:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    .line 1405
    :cond_3
    const-string v0, "[Remote Converter] Failed in GetConvertedFile: %s"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    invoke-static {v14, v10}, Lcom/metamoji/ui/ImportActivity;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    new-instance v4, Lcom/metamoji/ns/service/NsCollaboServiceException;

    iget v5, v12, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_statusCode:I

    invoke-direct {v4, v5, v15, v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_4
    const/16 v16, 0x0

    .line 1409
    instance-of v5, v13, Ljava/io/File;

    const/4 v12, 0x0

    if-eqz v5, :cond_5

    .line 1411
    check-cast v13, Ljava/io/File;

    move v5, v12

    move-object v9, v13

    move-object v11, v9

    goto :goto_2

    :cond_5
    move v5, v12

    :goto_2
    if-nez v5, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1415
    invoke-interface {v2, v0}, Lcom/metamoji/nt/INtProgressUI;->progress(F)V

    if-eqz v11, :cond_6

    move-object/from16 v0, v16

    goto :goto_6

    .line 1419
    :cond_6
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v4, "AP0104"

    const-string/jumbo v5, "why pdf file is not specified?"

    invoke-direct {v0, v4, v5}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_7
    const/16 v16, 0x0

    .line 1377
    :try_start_6
    const-string v0, "[Remote Converter] Failed in ConvertRequest: %s"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1378
    invoke-static {v9, v10}, Lcom/metamoji/ui/ImportActivity;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1379
    new-instance v4, Lcom/metamoji/ns/service/NsCollaboServiceException;

    iget v5, v11, Lcom/metamoji/rc/RcConvertRequestURLConnection;->m_statusCode:I

    invoke-direct {v4, v5, v12, v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_8
    const/16 v16, 0x0

    .line 1351
    const-string v0, "[Remote Converter] Failed in TentativeRegist: %s"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    invoke-static {v8, v10}, Lcom/metamoji/ui/ImportActivity;->safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1353
    new-instance v4, Lcom/metamoji/ns/service/NsCollaboServiceException;

    iget v5, v7, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->m_statusCode:I

    invoke-direct {v4, v5, v9, v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v5, v16

    goto :goto_7

    :catch_4
    move-exception v0

    const/16 v16, 0x0

    :goto_4
    move-object/from16 v9, v16

    move-object v11, v9

    .line 1421
    :goto_5
    :try_start_7
    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ConvertFailed:I

    invoke-static {v0, v4}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_a

    .line 1424
    const-string v2, "import:errorMessage"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v9, :cond_9

    .line 1431
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_9
    return-object v16

    .line 1428
    :cond_a
    :try_start_8
    invoke-direct {v1, v11, v2, v3}, Lcom/metamoji/ui/ImportActivity;->importPdf(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v9, :cond_b

    .line 1431
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_b
    return-object v0

    :catchall_3
    move-exception v0

    move-object v5, v9

    :goto_7
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1433
    :cond_c
    throw v0
.end method

.method private importHayabusaDoc(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/ui/ImportActivity$CancelException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 952
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 953
    const-string v2, "import:errorMessage"

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Import_Note:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .line 955
    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtDocument;->importHayabusaDoc(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/ArrayList;Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 960
    :cond_0
    const-string p1, "converterErrorCode"

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 961
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p1, p2, :cond_1

    return-object v1

    .line 971
    :cond_1
    new-instance p1, Lcom/metamoji/ui/ImportActivity$CancelException;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/ImportActivity$CancelException;-><init>(Lcom/metamoji/ui/ImportActivity;)V

    throw p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 965
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 966
    invoke-direct {p0, p1}, Lcom/metamoji/ui/ImportActivity;->reportError(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private importImage(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/ui/ImportActivity$CancelException;
        }
    .end annotation

    .line 1251
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v0, v0, v1}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile(Ljava/lang/String;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1252
    iput-boolean v0, p0, Lcom/metamoji/ui/ImportActivity;->doImportImage:Z

    if-nez p2, :cond_0

    .line 1254
    iput-boolean v0, p0, Lcom/metamoji/ui/ImportActivity;->doImportImage:Z

    .line 1262
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$string;->ImportImageMessage:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "import:errorMessage"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 1267
    :cond_0
    iput-object p0, p0, Lcom/metamoji/ui/ImportActivity;->m_lockThreadForImage:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1268
    iput-boolean p2, p0, Lcom/metamoji/ui/ImportActivity;->doImportImage:Z

    .line 1271
    invoke-direct {p0, p1, p3}, Lcom/metamoji/ui/ImportActivity;->importImageCore(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private importImage(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 2

    .line 1441
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1442
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1444
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1445
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ImportActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private importImageCore(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1291
    :try_start_0
    const-string v1, "_image_work"

    const-string v2, ".state"

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1292
    :try_start_1
    invoke-static {v1, p1}, Lcom/metamoji/nt/NtDocumentTemplate;->newDocumentFromImage(Ljava/io/File;Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    .line 1294
    :try_start_2
    const-string p2, "failed to load image"

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 1311
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_0
    if-eqz v1, :cond_1

    .line 1314
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_1
    return-object v0

    .line 1299
    :cond_2
    :try_start_3
    new-instance v2, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;

    invoke-direct {v2, p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 1300
    invoke-static {v2}, Lcom/metamoji/dvm/DvmUtil;->doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V

    .line 1301
    const-string/jumbo v3, "title"

    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDefaultDocumentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1302
    new-instance v2, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v2}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 1304
    invoke-static {v1, v0, p2}, Lcom/metamoji/nt/NtDocument;->importDocumentBinary(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    .line 1311
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 1314
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_4
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 1306
    :goto_0
    :try_start_4
    const-string v2, "import image error."

    invoke-static {p2, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_5

    .line 1311
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_5
    if-eqz v1, :cond_6

    .line 1314
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_6
    return-object v0

    :catchall_3
    move-exception p2

    if-eqz p1, :cond_7

    .line 1311
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_7
    if-eqz v1, :cond_8

    .line 1314
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 1316
    :cond_8
    throw p2
.end method

.method private importPdf(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/ui/ImportActivity$CancelException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 985
    new-instance v2, Lcom/metamoji/nt/NtPDFImportOptions;

    invoke-direct {v2}, Lcom/metamoji/nt/NtPDFImportOptions;-><init>()V

    .line 986
    sget-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation0:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtPDFImportOptions;->setRotation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;)V

    .line 987
    sget-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationAsIs:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtPDFImportOptions;->setLocation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;)V

    .line 992
    new-instance v0, Lcom/metamoji/df/sprite/pdf/PDFReader;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/pdf/PDFReader;-><init>()V

    .line 993
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/df/sprite/pdf/PDFReader;->createDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/sprite/pdf/PDFDocument;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    .line 995
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->size()I

    move-result v8

    if-lt v8, v4, :cond_2

    .line 998
    invoke-virtual {v3, v5}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getPage(I)Lcom/metamoji/df/sprite/pdf/PDFPage;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1000
    invoke-virtual {v8}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getWidth()F

    move-result v9

    .line 1001
    invoke-virtual {v8}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getHeight()F

    move-result v10

    cmpl-float v11, v9, v6

    if-lez v11, :cond_0

    cmpl-float v11, v10, v6

    if-lez v11, :cond_0

    .line 1004
    new-instance v13, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v13}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    .line 1005
    invoke-virtual {v13, v6}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 1006
    invoke-virtual {v13, v6}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 1007
    invoke-virtual {v13, v9}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 1008
    invoke-virtual {v13, v10}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 1009
    invoke-virtual {v13}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v11

    .line 1010
    invoke-virtual {v11, v7}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 1011
    sget-object v12, Lcom/metamoji/df/sprite/PaintSolid;->WHITE:Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {v11, v12}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 1012
    invoke-virtual {v11, v6, v6, v9, v10}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 1013
    invoke-virtual {v11, v6, v6, v8}, Lcom/metamoji/df/sprite/Graphics;->drawPDFPage(FFLcom/metamoji/df/sprite/pdf/PDFPage;)V

    .line 1015
    new-instance v12, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v12}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    float-to-int v6, v9

    .line 1016
    invoke-virtual {v12, v6}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    float-to-int v6, v10

    .line 1017
    invoke-virtual {v12, v6}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1018
    invoke-virtual/range {v12 .. v17}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 1020
    invoke-virtual {v12}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    move/from16 v18, v9

    move-object v9, v6

    move/from16 v6, v18

    goto :goto_1

    :cond_0
    move v6, v9

    goto :goto_0

    :cond_1
    move v10, v6

    :goto_0
    move-object v9, v7

    :goto_1
    if-eqz v8, :cond_3

    .line 1024
    invoke-virtual {v8}, Lcom/metamoji/df/sprite/pdf/PDFPage;->close()V

    goto :goto_2

    :cond_2
    move v10, v6

    move-object v9, v7

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 1028
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->close()V

    .line 1032
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFReader;->release()V

    goto :goto_3

    :cond_5
    move v10, v6

    move-object v9, v7

    .line 1035
    :goto_3
    iput-boolean v5, v1, Lcom/metamoji/ui/ImportActivity;->doImportPdf:Z

    if-nez v9, :cond_6

    .line 1037
    iput-boolean v5, v1, Lcom/metamoji/ui/ImportActivity;->doImportPdf:Z

    .line 1038
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_Import_PDF_Invalid_PDF_Message:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_Import_PDF_Title:I

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmUtils;->modalConfirmDialog(II)V

    goto :goto_4

    .line 1042
    :cond_6
    iput-boolean v5, v1, Lcom/metamoji/ui/ImportActivity;->_pdf_import_error:Z

    .line 1043
    iput-object v1, v1, Lcom/metamoji/ui/ImportActivity;->m_lockThread:Ljava/lang/Object;

    const-wide/16 v11, 0x3e8

    .line 1053
    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 1055
    invoke-static {v2, v6, v10, v9}, Lcom/metamoji/ui/dialog/PDFImportOption;->setPdfImportOption(Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)Lcom/metamoji/nt/NtPDFImportOptions;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1057
    iput-boolean v4, v1, Lcom/metamoji/ui/ImportActivity;->doImportPdf:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1060
    const-string v3, "[ImportPDF] Error."

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1061
    iput-boolean v4, v1, Lcom/metamoji/ui/ImportActivity;->_pdf_import_error:Z

    .line 1064
    :cond_7
    :goto_4
    iget-boolean v0, v1, Lcom/metamoji/ui/ImportActivity;->_pdf_import_error:Z

    if-eqz v0, :cond_8

    return-object v7

    .line 1067
    :cond_8
    iget-boolean v0, v1, Lcom/metamoji/ui/ImportActivity;->doImportPdf:Z

    if-eqz v0, :cond_9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 1068
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/metamoji/ui/ImportActivity;->importPdfCore(Ljava/io/File;Lcom/metamoji/nt/NtPDFImportOptions;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1070
    :cond_9
    new-instance v0, Lcom/metamoji/ui/ImportActivity$CancelException;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/ImportActivity$CancelException;-><init>(Lcom/metamoji/ui/ImportActivity;)V

    throw v0
.end method

.method private importPdfCore(Ljava/io/File;Lcom/metamoji/nt/NtPDFImportOptions;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/NtPDFImportOptions;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1082
    :try_start_0
    const-string v1, "_pdf_work"

    const-string v2, ".state"

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1083
    :try_start_1
    invoke-static {v1, p1, p2, p3}, Lcom/metamoji/nt/NtDocumentTemplate;->newDocumentFromPDF(Ljava/io/File;Ljava/io/File;Lcom/metamoji/nt/NtPDFImportOptions;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_2

    .line 1085
    :try_start_2
    const-string p1, "failed to load pdf"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_0

    .line 1107
    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_0
    if-eqz v1, :cond_1

    .line 1110
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_1
    return-object v0

    .line 1090
    :cond_2
    :try_start_3
    const-string p3, "import:filename"

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_3

    .line 1092
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    .line 1095
    :cond_3
    new-instance p1, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;

    invoke-direct {p1, p2}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 1096
    invoke-static {p1}, Lcom/metamoji/dvm/DvmUtil;->doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V

    .line 1097
    const-string/jumbo v2, "title"

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1098
    new-instance p1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 1100
    invoke-static {v1, v0, p4}, Lcom/metamoji/nt/NtDocument;->importDocumentBinary(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_4

    .line 1107
    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 1110
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    .line 1102
    :goto_0
    :try_start_4
    const-string p3, "import pdf error."

    invoke-static {p1, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p2, :cond_6

    .line 1107
    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_6
    if-eqz v1, :cond_7

    .line 1110
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_7
    return-object v0

    :catchall_3
    move-exception p1

    if-eqz p2, :cond_8

    .line 1107
    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_8
    if-eqz v1, :cond_9

    .line 1110
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 1112
    :cond_9
    throw p1
.end method

.method private importStateFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 942
    :try_start_0
    invoke-static {p1, v0}, Lcom/metamoji/nt/NtDocument;->importStateFile(Ljava/io/File;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 944
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 945
    invoke-direct {p0, p1}, Lcom/metamoji/ui/ImportActivity;->reportError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private importVideo(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/ui/INtProgressUIEx;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/ui/ImportActivity$CancelException;
        }
    .end annotation

    .line 1200
    new-instance v0, Lcom/metamoji/media/video/VfVideoImport;

    invoke-direct {v0}, Lcom/metamoji/media/video/VfVideoImport;-><init>()V

    .line 1201
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/ImportActivity$14;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/ImportActivity$14;-><init>(Lcom/metamoji/ui/ImportActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1209
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/metamoji/media/video/VfVideoImport;->execute(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1210
    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoImport;->getCancelled()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    new-instance p1, Lcom/metamoji/ui/ImportActivity$CancelException;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/ImportActivity$CancelException;-><init>(Lcom/metamoji/ui/ImportActivity;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private importVideo(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    .locals 0

    .line 1461
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ImportActivity;->importImage(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void
.end method

.method public static isCustomEditAction(Landroid/content/Intent;)Z
    .locals 1

    .line 497
    const-string v0, "com.metamoji.note.CUSTOM_EDIT"

    .line 498
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onFailure(ZLjava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_2

    .line 831
    new-instance p1, Lcom/metamoji/ui/ImportActivity$12;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/ImportActivity$12;-><init>(Lcom/metamoji/ui/ImportActivity;)V

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    .line 839
    invoke-static {p2, p3, p1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 842
    sget p3, Lcom/metamoji/noteanytime/R$string;->Msg_ImportNoteError:I

    :cond_1
    const/4 p2, 0x0

    .line 844
    invoke-static {p3, p2, p1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 847
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->finish()V

    return-void
.end method

.method private reportError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1470
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method static safeGetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1231
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1232
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1233
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private selectImportMode(Lcom/metamoji/ui/ImportActivity$IImportModeResult;)Z
    .locals 7

    .line 185
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DLG_CreationOrInsertionSelector"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 192
    sget v4, Lcom/metamoji/noteanytime/R$string;->Title_Import:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v4, 0x3

    .line 193
    new-array v4, v4, [Ljava/lang/String;

    sget v5, Lcom/metamoji/noteanytime/R$string;->IMPORT_PDF_AS_PAGE:I

    .line 194
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->IMPORT_PDF_AS_NOTE:I

    .line 195
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget v5, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    .line 196
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v4, v5

    .line 198
    new-instance v0, Lcom/metamoji/ui/ImportActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/ImportActivity$1;-><init>(Lcom/metamoji/ui/ImportActivity;Lcom/metamoji/ui/ImportActivity$IImportModeResult;)V

    invoke-virtual {v3, v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 205
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v6
.end method


# virtual methods
.method doImportAndPermissionCheck()V
    .locals 9

    .line 259
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, ".atdoc"

    invoke-static {v0, v2, v3}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContent(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 288
    sget v0, Lcom/metamoji/noteanytime/R$string;->Send_Evernote_Error_04:I

    new-instance v1, Lcom/metamoji/ui/ImportActivity$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/ImportActivity$3;-><init>(Lcom/metamoji/ui/ImportActivity;)V

    invoke-static {v0, v3, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 297
    :cond_0
    invoke-static {v0}, Lcom/metamoji/ui/ImportActivity;->isCustomEditAction(Landroid/content/Intent;)Z

    move-result v4

    .line 298
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "%@"

    const/4 v8, 0x1

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.SEND"

    .line 299
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    const-string v4, "com.metamoji.note.intent.action.ImageImportFromMainActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 390
    invoke-direct {p0}, Lcom/metamoji/ui/ImportActivity;->confirmToCloseSendBackTargetDocument()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 394
    sget v3, Lcom/metamoji/noteanytime/R$string;->Import_Msg_CloseSendBackTargetDoc_Message:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 396
    new-instance v3, Lcom/metamoji/ui/ImportActivity$7;

    invoke-direct {v3, p0, v0, v2}, Lcom/metamoji/ui/ImportActivity$7;-><init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    invoke-static {v1, v6, v3, v8}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 406
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    sget v1, Lcom/metamoji/noteanytime/R$string;->Trial_Msg_Ask_Finish_Trial_Mode:I

    new-instance v4, Lcom/metamoji/ui/ImportActivity$8;

    invoke-direct {v4, p0, v0, v2}, Lcom/metamoji/ui/ImportActivity$8;-><init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 421
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/metamoji/ui/ImportActivity;->doImportImage(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void

    .line 304
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/ui/ImportActivity;->confirmToCloseSendBackTargetDocument()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 308
    sget v3, Lcom/metamoji/noteanytime/R$string;->Import_Msg_CloseSendBackTargetDoc_Message:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v3, Lcom/metamoji/ui/ImportActivity$4;

    invoke-direct {v3, p0, v0, v2}, Lcom/metamoji/ui/ImportActivity$4;-><init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    invoke-static {v1, v6, v3, v8}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 320
    :cond_5
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 323
    sget v1, Lcom/metamoji/noteanytime/R$string;->Trial_Msg_Ask_Finish_Trial_Mode:I

    new-instance v4, Lcom/metamoji/ui/ImportActivity$5;

    invoke-direct {v4, p0, v0, v2}, Lcom/metamoji/ui/ImportActivity$5;-><init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 336
    :cond_6
    const-string v1, "insertable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/metamoji/ui/ImportActivity;->isCustomEditAction(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 337
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 338
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 340
    new-instance v1, Lcom/metamoji/ui/ImportActivity$6;

    invoke-direct {v1, p0, v0, v2}, Lcom/metamoji/ui/ImportActivity$6;-><init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    invoke-direct {p0, v1}, Lcom/metamoji/ui/ImportActivity;->selectImportMode(Lcom/metamoji/ui/ImportActivity$IImportModeResult;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 359
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->finish()V

    :cond_7
    return-void

    .line 365
    :cond_8
    invoke-virtual {v2}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 368
    invoke-direct {p0, v0, v2}, Lcom/metamoji/ui/ImportActivity;->doImportImage(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void

    .line 370
    :cond_9
    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isUnknownMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v2}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeTypeByFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppUnavailableVoice:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 373
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 374
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 376
    invoke-direct {p0, v0, v2}, Lcom/metamoji/ui/ImportActivity;->doImport(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void

    .line 380
    :cond_b
    invoke-direct {p0, v0, v2}, Lcom/metamoji/ui/ImportActivity;->doImportAudio(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void

    .line 387
    :cond_c
    invoke-direct {p0, v0, v2}, Lcom/metamoji/ui/ImportActivity;->doImport(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 482
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 484
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->ExtensionKitCallGooglePlay:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->finish()V

    return-void

    .line 489
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 492
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 212
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 214
    invoke-static {p0}, Lcom/metamoji/nt/NtStartup;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    if-nez p1, :cond_0

    .line 218
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 222
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->activity_import:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ImportActivity;->setContentView(I)V

    .line 224
    sget v0, Lcom/metamoji/noteanytime/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ImportActivity;->setupWindowInsetsListener(Landroid/view/View;)V

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 230
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 232
    sget v0, Lcom/metamoji/noteanytime/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/metamoji/ui/ImportActivity;->_bar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 237
    sget v0, Lcom/metamoji/noteanytime/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 238
    new-instance v1, Lcom/metamoji/ui/ImportActivity$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/ImportActivity$2;-><init>(Lcom/metamoji/ui/ImportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "showCancelButton"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    :cond_2
    sget-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->INSTANCE:Lcom/metamoji/ui/ImportActivityProgressUI;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/ImportActivityProgressUI;->attach(Lcom/metamoji/ui/ImportActivity;)V

    if-nez p1, :cond_3

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->doImportAndPermissionCheck()V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1509
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onDestroy()V

    .line 1510
    sget-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->INSTANCE:Lcom/metamoji/ui/ImportActivityProgressUI;

    invoke-virtual {v0}, Lcom/metamoji/ui/ImportActivityProgressUI;->detach()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 475
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 476
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->finish()V

    .line 477
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ImportActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1497
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 1501
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 1504
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1488
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 1489
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
