.class public final Lcom/metamoji/cm/TempFileRef$Companion;
.super Ljava/lang/Object;
.source "TempFileRef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/TempFileRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTempFileRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TempFileRef.kt\ncom/metamoji/cm/TempFileRef$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,39:1\n1#2:40\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/cm/TempFileRef$Companion;",
        "",
        "<init>",
        "()V",
        "TEMP_FOLDER",
        "Ljava/io/File;",
        "getTempFolder",
        "clear",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/cm/TempFileRef$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTempFolder(Lcom/metamoji/cm/TempFileRef$Companion;)Ljava/io/File;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/metamoji/cm/TempFileRef$Companion;->getTempFolder()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final getTempFolder()Ljava/io/File;
    .locals 1

    .line 25
    invoke-static {}, Lcom/metamoji/cm/TempFileRef;->access$getTEMP_FOLDER$cp()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 32
    invoke-static {}, Lcom/metamoji/cm/TempFileRef;->access$getTEMP_FOLDER$cp()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 34
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
