.class public final Lcom/metamoji/ui/task/SaveMultiFilesTask;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "SaveMultiFilesTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B)\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ \u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0011\u001a\u00020\u0008H\u0094@\u00a2\u0006\u0002\u0010\u0012R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/ui/task/SaveMultiFilesTask;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "sourceFiles",
        "",
        "Ljava/io/File;",
        "mimeType",
        "",
        "deleteSource",
        "",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;Z)V",
        "copyOne",
        "resolver",
        "Landroid/content/ContentResolver;",
        "src",
        "dir",
        "Landroidx/documentfile/provider/DocumentFile;",
        "execute",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;

.field public static final TASK_NAME:Ljava/lang/String;


# instance fields
.field private final deleteSource:Z

.field private final mimeType:Ljava/lang/String;

.field private final sourceFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->Companion:Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->TASK_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 21
    sget-object v1, Lcom/metamoji/ui/task/SaveMultiFilesTask;->TASK_NAME:Ljava/lang/String;

    const-string v0, "TASK_NAME"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    iput-object p1, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->sourceFiles:Ljava/util/List;

    iput-object p2, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->mimeType:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->deleteSource:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/task/SaveMultiFilesTask;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/task/SaveMultiFilesTask;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$copyOne(Lcom/metamoji/ui/task/SaveMultiFilesTask;Landroid/content/ContentResolver;Ljava/io/File;Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/task/SaveMultiFilesTask;->copyOne(Landroid/content/ContentResolver;Ljava/io/File;Landroidx/documentfile/provider/DocumentFile;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSourceFiles$p(Lcom/metamoji/ui/task/SaveMultiFilesTask;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->sourceFiles:Ljava/util/List;

    return-object p0
.end method

.method private final copyOne(Landroid/content/ContentResolver;Ljava/io/File;Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 14

    const-string v1, "cannot open out file: "

    const-string v2, "cannot create file: "

    const-string v3, "cannot open in file: "

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 55
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    check-cast v7, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v8, v7

    check-cast v8, Ljava/io/InputStream;

    if-nez v8, :cond_0

    .line 57
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 58
    :try_start_2
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    return v5

    .line 60
    :cond_0
    :try_start_3
    sget-object v3, Lcom/metamoji/ui/task/SaveMultiFilesTask;->Companion:Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "stripExtension(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v10, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->mimeType:Ljava/lang/String;

    .line 62
    sget-object v11, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "getName(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p3

    .line 60
    invoke-virtual {v3, v9, v10, v11, v12}, Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-nez v3, :cond_1

    .line 65
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 66
    :try_start_4
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return v5

    .line 68
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-string v9, "getUri(...)"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/metamoji/cm/OopsKt;->openTruncatedStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    move-object v0, v2

    check-cast v0, Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 70
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 71
    :try_start_7
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return v5

    .line 73
    :cond_2
    :try_start_9
    invoke-static {v8, v0, v5, v4, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 68
    :try_start_a
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 55
    :try_start_b
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 68
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_d
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 55
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_f
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    .line 79
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    invoke-static {v1, v0, v6, v4, v6}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return v5
.end method

.method public static final createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->Companion:Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method static final execute$lambda$2(ILcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 8

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForConfirm$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method public static final saveFiles(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->Companion:Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;->saveFiles(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final saveFiles(Ljava/util/List;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->Companion:Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;->saveFiles(Ljava/util/List;Ljava/lang/String;ZLkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;

    iget v1, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;-><init>(Lcom/metamoji/ui/task/SaveMultiFilesTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 84
    iget v2, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->I$1:I

    iget v0, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    :try_start_1
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iput v7, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto/16 :goto_9

    :cond_6
    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getDirectoryPicker()Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

    move-result-object p1

    iput v6, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    invoke-static {p1, v8, v0, v7, v8}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;->selectDirectory$default(Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;Landroid/net/Uri;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_9

    .line 84
    :cond_7
    :goto_2
    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_9

    .line 88
    sget-object p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v2, "cancelled"

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 89
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    iget-boolean v0, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->deleteSource:Z

    if-eqz v0, :cond_8

    .line 111
    iget-object v0, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->sourceFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 112
    invoke-static {v1}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    goto :goto_3

    :cond_8
    return-object p1

    .line 91
    :cond_9
    :try_start_2
    new-instance v2, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$result$1;

    invoke-direct {v2, p1, p0, v8}, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$result$1;-><init>(Landroid/net/Uri;Lcom/metamoji/ui/task/SaveMultiFilesTask;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/ui/task/SaveMultiFilesTask;->withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_9

    :cond_a
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    iget-boolean v2, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->deleteSource:Z

    if-eqz v2, :cond_c

    .line 111
    iget-object v2, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->sourceFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 112
    invoke-static {v4}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    goto :goto_5

    .line 107
    :goto_6
    :try_start_3
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    invoke-static {v2, p1, v8, v6, v8}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    iget-boolean p1, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->deleteSource:Z

    if-eqz p1, :cond_b

    .line 111
    iget-object p1, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->sourceFiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 112
    invoke-static {v2}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    goto :goto_7

    :cond_b
    move p1, v5

    :cond_c
    if-eqz p1, :cond_d

    .line 117
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Succeeded:I

    goto :goto_8

    :cond_d
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Failed:I

    .line 118
    :goto_8
    sget-object v4, Lcom/metamoji/ui/task/SaveMultiFilesTask;->TASK_NAME:Ljava/lang/String;

    const-string v6, "TASK_NAME"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/metamoji/ui/task/SaveMultiFilesTask$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/metamoji/ui/task/SaveMultiFilesTask$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v8, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->I$0:I

    iput v2, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->I$1:I

    iput v3, v0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    invoke-virtual {p0, v4, v6, v0}, Lcom/metamoji/ui/task/SaveMultiFilesTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_e

    :goto_9
    return-object v1

    :cond_e
    move v0, p1

    :goto_a
    if-eqz v0, :cond_f

    move v5, v7

    .line 122
    :cond_f
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 110
    iget-boolean v0, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->deleteSource:Z

    if-eqz v0, :cond_10

    .line 111
    iget-object v0, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask;->sourceFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 112
    invoke-static {v1}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    goto :goto_b

    :cond_10
    throw p1
.end method
