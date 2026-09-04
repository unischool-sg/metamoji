.class public final Lcom/metamoji/ui/UiMediaStore;
.super Ljava/lang/Object;
.source "UiMediaStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/UiMediaStore$JAVA;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001,B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u000e\u0010\u000c\u001a\u00020\rH\u0082@\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0010H\u0002J&\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00102\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J$\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0004\u0008\u0000\u0010\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0018H\u0082@\u00a2\u0006\u0002\u0010\u0019J*\u0010\u0015\u001a\u0002H\u0016\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u001a\u001a\u0002H\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0018H\u0082@\u00a2\u0006\u0002\u0010\u001bJ,\u0010\u001c\u001a\u00020\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\"J.\u0010#\u001a\u00020$2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u0018H\u0086@\u00a2\u0006\u0002\u0010&J.\u0010\'\u001a\u00020\r2\u0006\u0010(\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0010H\u0003J.\u0010)\u001a\u00020\r2\u000e\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u00182\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010*J,\u0010+\u001a\u00020\r2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006-"
    }
    d2 = {
        "Lcom/metamoji/ui/UiMediaStore;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "mimeType2CompressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "mimeType",
        "",
        "getWriteExternalStoragePermissionIfNeed",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createExistsNamesSet",
        "",
        "createUniqueName",
        "existsNames",
        "fileName",
        "ext",
        "suspendRunOnBackground",
        "T",
        "fn",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "def",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveMultiBitmaps",
        "",
        "bitmaps",
        "Lkotlin/sequences/Sequence;",
        "Landroid/graphics/Bitmap;",
        "baseFileName",
        "(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveSingleBitmap",
        "",
        "getBitmap",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveSingleBitmapToGalleryCore",
        "bitmap",
        "saveSingleBitmapToGallery",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveMultiBitmapsToGallery",
        "JAVA",
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
.field public static final INSTANCE:Lcom/metamoji/ui/UiMediaStore;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/metamoji/ui/UiMediaStore;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMediaStore;-><init>()V

    sput-object v0, Lcom/metamoji/ui/UiMediaStore;->INSTANCE:Lcom/metamoji/ui/UiMediaStore;

    .line 28
    new-instance v1, Lcom/metamoji/lib/utils/UtLog;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v2, "MediaStore"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/metamoji/ui/UiMediaStore;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getWriteExternalStoragePermissionIfNeed(Lcom/metamoji/ui/UiMediaStore;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiMediaStore;->getWriteExternalStoragePermissionIfNeed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$mimeType2CompressFormat(Lcom/metamoji/ui/UiMediaStore;Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiMediaStore;->mimeType2CompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$suspendRunOnBackground(Lcom/metamoji/ui/UiMediaStore;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/UiMediaStore;->suspendRunOnBackground(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$suspendRunOnBackground(Lcom/metamoji/ui/UiMediaStore;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/UiMediaStore;->suspendRunOnBackground(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final createExistsNamesSet()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v0, v2, :cond_3

    const/4 v2, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "external_primary"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, v3

    check-cast v0, Landroid/database/Cursor;

    .line 52
    const-string v4, "_display_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 57
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v1

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 63
    sget-object v3, Lcom/metamoji/ui/UiMediaStore;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v4, 0x2

    invoke-static {v3, v0, v2, v4, v2}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method private final createUniqueName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x2711

    if-ge v1, v2, :cond_1

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getWriteExternalStoragePermissionIfNeed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;

    iget v1, v0, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;-><init>(Lcom/metamoji/ui/UiMediaStore;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    sget-object p1, Lcom/metamoji/ui/UiPermissionBroker;->Companion:Lcom/metamoji/ui/UiPermissionBroker$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiPermissionBroker$Companion;->getNeedWriteExternalStoragePermission()Z

    move-result p1

    if-nez p1, :cond_4

    .line 42
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 44
    :cond_4
    iput v4, v0, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;->label:I

    invoke-static {v0}, Lcom/metamoji/ui/task/TaskExtensionKt;->mmjGetPermissionBroker(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Lcom/metamoji/ui/UiPermissionBroker;

    if-eqz p1, :cond_7

    iput v3, v0, Lcom/metamoji/ui/UiMediaStore$getWriteExternalStoragePermissionIfNeed$1;->label:I

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/ui/UiPermissionBroker;->requestPermission(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final mimeType2CompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 33
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string v0, "image/png"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    .line 35
    :cond_0
    const-string v0, "image/webp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    .line 36
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1
.end method

.method static final saveMultiBitmapsToGallery$lambda$10(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 240
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 241
    sget-object v0, Lcom/metamoji/ui/UiMediaStore;->INSTANCE:Lcom/metamoji/ui/UiMediaStore;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMediaStore;->createExistsNamesSet()Ljava/util/Set;

    move-result-object v0

    .line 244
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 245
    sget-object v4, Lcom/metamoji/ui/UiMediaStore;->INSTANCE:Lcom/metamoji/ui/UiMediaStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, p2, v0}, Lcom/metamoji/ui/UiMediaStore;->saveSingleBitmapToGalleryCore(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static final saveSingleBitmap$lambda$3(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/metamoji/ui/task/DynamicStreamSource$Builder;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$Builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmap$2$1;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->saveTo(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    .line 165
    sget p0, Lcom/metamoji/noteanytime/R$string;->Save_Album_Title:I

    .line 166
    sget p1, Lcom/metamoji/noteanytime/R$string;->Save_Album_Success:I

    .line 167
    sget v0, Lcom/metamoji/noteanytime/R$string;->Save_Album_Error:I

    .line 164
    invoke-virtual {p2, p0, p1, v0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->message(III)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    .line 169
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final saveSingleBitmapToGallery$lambda$9(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 224
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 225
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 226
    :cond_0
    sget-object v0, Lcom/metamoji/ui/UiMediaStore;->INSTANCE:Lcom/metamoji/ui/UiMediaStore;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMediaStore;->createExistsNamesSet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/metamoji/ui/UiMediaStore;->saveSingleBitmapToGalleryCore(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method private final saveSingleBitmapToGalleryCore(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 183
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 184
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v5, 0x1d

    const-string v6, ".jpg"

    if-lt v4, v5, :cond_2

    .line 185
    :try_start_1
    const-string v4, "external_primary"

    invoke-static {v4}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 186
    invoke-static {p3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-direct {p0, p4, p2, v6}, Lcom/metamoji/ui/UiMediaStore;->createUniqueName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 188
    const-string v5, "_display_name"

    invoke-virtual {p4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string p2, "mime_type"

    invoke-virtual {p4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, v4, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 192
    new-instance p4, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    invoke-direct {p4, p2}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;-><init>(Landroid/net/Uri;)V

    goto :goto_2

    .line 191
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot insert content."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_2
    sget-object p4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    .line 195
    invoke-static {p3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    invoke-static {p4, p2, v6}, Lcom/metamoji/cm/CmUtils;->getUniqueFilename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 196
    new-instance p4, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p4, p2, v3}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;-><init>(Ljava/io/File;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 198
    :goto_2
    :try_start_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 199
    invoke-virtual {p4}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->outputStream()Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v3, p2

    check-cast v3, Ljava/io/OutputStream;

    .line 200
    sget-object v4, Lcom/metamoji/ui/UiMediaStore;->INSTANCE:Lcom/metamoji/ui/UiMediaStore;

    invoke-direct {v4, p3}, Lcom/metamoji/ui/UiMediaStore;->mimeType2CompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p3

    const/16 v4, 0x64

    invoke-virtual {p1, p3, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :try_start_4
    invoke-static {p2, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_6
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_4
    move p1, v1

    .line 201
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 198
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_7
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 202
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 204
    invoke-virtual {p4, p1}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->dispose(Z)V

    move v1, p1

    goto :goto_5

    .line 208
    :cond_5
    sget-object p1, Lcom/metamoji/ui/UiMediaStore;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-static {p1, p2, v2, v0, v2}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 209
    invoke-virtual {p4, v1}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->dispose(Z)V

    goto :goto_5

    .line 195
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot create file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 214
    sget-object p2, Lcom/metamoji/ui/UiMediaStore;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-static {p2, p1, v2, v0, v2}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_5
    return v1
.end method

.method private final suspendRunOnBackground(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;

    iget v1, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;-><init>(Lcom/metamoji/ui/UiMediaStore;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 103
    iget v2, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 104
    iput-object p1, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$3;->label:I

    invoke-direct {p0, p2, v0}, Lcom/metamoji/ui/UiMediaStore;->suspendRunOnBackground(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    return-object p1

    :cond_4
    return-object p3
.end method

.method private final suspendRunOnBackground(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 86
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 88
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$2$1;

    invoke-direct {v3, v1, p1}, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$2$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Ljava/lang/Runnable;

    new-instance p1, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$2$2;

    invoke-direct {p1, v1}, Lcom/metamoji/ui/UiMediaStore$suspendRunOnBackground$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

    invoke-virtual {v2, v3, p1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 98
    sget-object v2, Lcom/metamoji/ui/UiMediaStore;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, p1, v4, v3, v4}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 99
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 86
    :goto_0
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/ui/UiMediaStore;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public final saveMultiBitmaps(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 117
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    new-instance v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;-><init>(Landroid/content/Context;Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v0, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final saveMultiBitmapsToGallery(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;

    iget v1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;

    invoke-direct {v0, p0, p4}, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;-><init>(Lcom/metamoji/ui/UiMediaStore;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 233
    iget v2, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/Sequence;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$2:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/Sequence;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 234
    iput-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->label:I

    invoke-direct {p0, v0}, Lcom/metamoji/ui/UiMediaStore;->getWriteExternalStoragePermissionIfNeed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_6

    const/4 p4, 0x0

    .line 238
    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p4

    new-instance v2, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p3}, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda0;-><init>(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmapsToGallery$1;->label:I

    invoke-direct {p0, p4, v2, v0}, Lcom/metamoji/ui/UiMediaStore;->suspendRunOnBackground(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1

    .line 235
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no permission"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final saveSingleBitmap(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/metamoji/ui/task/SaveTypedFileTask;->Companion:Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;

    new-instance p4, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    .line 169
    new-instance v1, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, p2}, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    .line 148
    invoke-direct {p4, v1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 169
    invoke-virtual {p4}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->build()Lcom/metamoji/ui/task/DynamicStreamSource;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/metamoji/ui/task/ISaveFileSource;

    invoke-static {p2}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, ".jpg"

    :cond_0
    move-object v4, p3

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 148
    invoke-static/range {v0 .. v7}, Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;->saveFile$default(Lcom/metamoji/ui/task/SaveTypedFileTask$Companion;Lcom/metamoji/ui/task/ISaveFileSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 170
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final saveSingleBitmapToGallery(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;

    iget v1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;

    invoke-direct {v0, p0, p4}, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;-><init>(Lcom/metamoji/ui/UiMediaStore;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 219
    iget v2, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$2:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 220
    iput-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->label:I

    invoke-direct {p0, v0}, Lcom/metamoji/ui/UiMediaStore;->getWriteExternalStoragePermissionIfNeed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_6

    const/4 p4, 0x0

    .line 223
    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p4

    new-instance v2, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2, p3}, Lcom/metamoji/ui/UiMediaStore$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/ui/UiMediaStore$saveSingleBitmapToGallery$1;->label:I

    invoke-direct {p0, p4, v2, v0}, Lcom/metamoji/ui/UiMediaStore;->suspendRunOnBackground(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1

    .line 221
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no permission"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
