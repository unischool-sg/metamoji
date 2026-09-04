.class public final Lcom/metamoji/un/video/UnVideoUtils$WorkFile;
.super Ljava/lang/Object;
.source "UnVideoUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkFile"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUtils$WorkFile;",
        "",
        "file",
        "Ljava/io/File;",
        "temporary",
        "",
        "<init>",
        "(Ljava/io/File;Z)V",
        "getTemporary",
        "()Z",
        "file_",
        "getFile",
        "()Ljava/io/File;",
        "dispose",
        "",
        "detach",
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


# instance fields
.field private file_:Ljava/io/File;

.field private final temporary:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;-><init>(Ljava/io/File;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->temporary:Z

    .line 34
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->file_:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;-><init>(Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public final detach()Ljava/io/File;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->file_:Ljava/io/File;

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->file_:Ljava/io/File;

    return-object v0
.end method

.method public final dispose()V
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->temporary:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->file_:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->file_:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->file_:Ljava/io/File;

    :cond_1
    return-void
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->file_:Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getTemporary()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->temporary:Z

    return v0
.end method
