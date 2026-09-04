.class public abstract Lio/github/toyota32k/utils/android/UtFile;
.super Ljava/lang/Object;
.source "UtFile.kt"

# interfaces
.implements Lio/github/toyota32k/utils/android/IUtFileEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/android/UtFile$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtFile.kt\nio/github/toyota32k/utils/android/UtFile\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,279:1\n1#2:280\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 #2\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\u0004\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H\u00050\tH$\u00a2\u0006\u0002\u0010\u000bJ\'\u0010\u000c\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H\u00050\tH\u0002\u00a2\u0006\u0002\u0010\rJ\'\u0010\u000e\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H\u00050\tH\u0002\u00a2\u0006\u0002\u0010\rJ\'\u0010\u000f\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u0002H\u00050\tH\u0016\u00a2\u0006\u0002\u0010\rJ\'\u0010\u0011\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u0002H\u00050\tH\u0016\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0017H\u0096\u0082\u0004J\u0014\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001dH\u0096\u0082\u0004J\n\u0010\u001e\u001a\u00020\u0019H\u0096\u0080\u0004J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010!\u001a\u00020 H\u0016J\u0008\u0010\"\u001a\u00020 H\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/UtFile;",
        "Lio/github/toyota32k/utils/android/IUtFileEx;",
        "<init>",
        "()V",
        "withFileDescriptor",
        "T",
        "mode",
        "",
        "fn",
        "Lkotlin/Function1;",
        "Ljava/io/FileDescriptor;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "fileDescriptorToRead",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "fileDescriptorToWrite",
        "fileInputStream",
        "Ljava/io/FileInputStream;",
        "fileOutputStream",
        "Ljava/io/FileOutputStream;",
        "safeDelete",
        "",
        "copyFrom",
        "src",
        "Lio/github/toyota32k/utils/android/IUtFile;",
        "compareTo",
        "",
        "other",
        "equals",
        "",
        "",
        "hashCode",
        "openParcelFileDescriptor",
        "Landroid/os/ParcelFileDescriptor;",
        "openParcelFileDescriptorToRead",
        "openParcelFileDescriptorToWrite",
        "Companion",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/github/toyota32k/utils/android/UtFile$Companion;


# direct methods
.method public static synthetic $r8$lambda$8007XBwW7uK0d8lvoCvle5XSGHU(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)J
    .locals 0

    invoke-static {p0, p1}, Lio/github/toyota32k/utils/android/UtFile;->copyFrom$lambda$0$0(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/utils/android/UtFile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/android/UtFile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/utils/android/UtFile;->Companion:Lio/github/toyota32k/utils/android/UtFile$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final copyFrom$lambda$0(Lio/github/toyota32k/utils/android/UtFile;Ljava/io/FileInputStream;)J
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda0;-><init>(Ljava/io/FileInputStream;)V

    invoke-virtual {p0, v0}, Lio/github/toyota32k/utils/android/UtFile;->fileOutputStream(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static final copyFrom$lambda$0$0(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)J
    .locals 7

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/nio/channels/WritableByteChannel;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final fileDescriptorToRead(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/FileDescriptor;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 65
    const-string v0, "r"

    invoke-virtual {p0, v0, p1}, Lio/github/toyota32k/utils/android/UtFile;->withFileDescriptor(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final fileDescriptorToWrite(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/FileDescriptor;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 66
    const-string v0, "rwt"

    invoke-virtual {p0, v0, p1}, Lio/github/toyota32k/utils/android/UtFile;->withFileDescriptor(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static final fileInputStream$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static final fileOutputStream$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Lio/github/toyota32k/utils/android/IUtFile;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFile;->getSafeUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1}, Lio/github/toyota32k/utils/android/IUtFile;->getSafeUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lio/github/toyota32k/utils/android/IUtFile;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/UtFile;->compareTo(Lio/github/toyota32k/utils/android/IUtFile;)I

    move-result p1

    return p1
.end method

.method public copyFrom(Lio/github/toyota32k/utils/android/IUtFile;)V
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda3;-><init>(Lio/github/toyota32k/utils/android/UtFile;)V

    invoke-interface {p1, v0}, Lio/github/toyota32k/utils/android/IUtFile;->fileInputStream(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 96
    instance-of v0, p1, Lio/github/toyota32k/utils/android/IUtFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 99
    :cond_0
    check-cast p1, Lio/github/toyota32k/utils/android/IUtFile;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/UtFile;->compareTo(Lio/github/toyota32k/utils/android/IUtFile;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public fileInputStream(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/FileInputStream;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/android/UtFile;->fileDescriptorToRead(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fileOutputStream(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/FileOutputStream;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/android/UtFile;->fileDescriptorToWrite(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 102
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFile;->getSafeUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract openParcelFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public openParcelFileDescriptorToRead()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 107
    const-string v0, "r"

    invoke-virtual {p0, v0}, Lio/github/toyota32k/utils/android/UtFile;->openParcelFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openParcelFileDescriptorToWrite()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 108
    const-string v0, "rw"

    invoke-virtual {p0, v0}, Lio/github/toyota32k/utils/android/UtFile;->openParcelFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public safeDelete()V
    .locals 2

    .line 79
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lio/github/toyota32k/utils/android/UtFile;

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFile;->delete()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract withFileDescriptor(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/FileDescriptor;",
            "+TT;>;)TT;"
        }
    .end annotation
.end method
