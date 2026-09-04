.class public final Lcom/metamoji/ui/dialog/FileArgumentProperty;
.super Lcom/metamoji/ui/dialog/ArgumentProperty;
.source "NtDialogArgument.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/dialog/ArgumentProperty<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtDialogArgument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtDialogArgument.kt\ncom/metamoji/ui/dialog/FileArgumentProperty\n+ 2 UtCompat.kt\ncom/metamoji/lib/utils/UtCompat$Companion\n*L\n1#1,71:1\n70#2:72\n*S KotlinDebug\n*F\n+ 1 NtDialogArgument.kt\ncom/metamoji/ui/dialog/FileArgumentProperty\n*L\n23#1:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/FileArgumentProperty;",
        "Lcom/metamoji/ui/dialog/ArgumentProperty;",
        "Ljava/io/File;",
        "argument",
        "Landroid/os/Bundle;",
        "name",
        "",
        "<init>",
        "(Landroid/os/Bundle;Ljava/lang/String;)V",
        "set",
        "",
        "value",
        "get",
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


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "argument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/ArgumentProperty;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 4

    .line 23
    sget-object v0, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FileArgumentProperty;->getArgument()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FileArgumentProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 72
    const-class v3, Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    .line 23
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/File;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FileArgumentProperty;->get()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/io/File;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FileArgumentProperty;->getArgument()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FileArgumentProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/FileArgumentProperty;->set(Ljava/io/File;)V

    return-void
.end method
