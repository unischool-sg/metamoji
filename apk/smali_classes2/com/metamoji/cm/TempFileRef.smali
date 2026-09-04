.class public final Lcom/metamoji/cm/TempFileRef;
.super Ljava/lang/Object;
.source "TempFileRef.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/TempFileRef$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/cm/TempFileRef;",
        "Ljava/io/Closeable;",
        "prefix",
        "",
        "suffix",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "_file",
        "Ljava/io/File;",
        "file",
        "getFile",
        "()Ljava/io/File;",
        "close",
        "",
        "Companion",
        "cm"
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
.field public static final Companion:Lcom/metamoji/cm/TempFileRef$Companion;

.field private static final TEMP_FOLDER:Ljava/io/File;


# instance fields
.field private _file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/metamoji/cm/TempFileRef$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cm/TempFileRef$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/cm/TempFileRef;->Companion:Lcom/metamoji/cm/TempFileRef$Companion;

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "com.metamoji.cm.TempFileRef"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/cm/TempFileRef;->TEMP_FOLDER:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/metamoji/cm/TempFileRef;->Companion:Lcom/metamoji/cm/TempFileRef$Companion;

    invoke-static {v0}, Lcom/metamoji/cm/TempFileRef$Companion;->access$getTempFolder(Lcom/metamoji/cm/TempFileRef$Companion;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/TempFileRef;->_file:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$getTEMP_FOLDER$cp()Ljava/io/File;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/cm/TempFileRef;->TEMP_FOLDER:Ljava/io/File;

    return-object v0
.end method

.method public static final clear()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/cm/TempFileRef;->Companion:Lcom/metamoji/cm/TempFileRef$Companion;

    invoke-virtual {v0}, Lcom/metamoji/cm/TempFileRef$Companion;->clear()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/cm/TempFileRef;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/metamoji/cm/TempFileRef;->_file:Ljava/io/File;

    return-void
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/metamoji/cm/TempFileRef;->_file:Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
