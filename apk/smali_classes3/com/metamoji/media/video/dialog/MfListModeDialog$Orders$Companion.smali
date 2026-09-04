.class public final Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders$Companion;
.super Ljava/lang/Object;
.source "MfListModeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders$Companion;",
        "",
        "<init>",
        "()V",
        "id2OrderValue",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "id",
        "",
        "orderValue2id",
        "key",
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
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final id2OrderValue(I)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 1

    .line 81
    sget v0, Lcom/metamoji/noteanytime/R$id;->radioOrderDesc:I

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->DESCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    return-object p1

    .line 82
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->radioOrderAsc:I

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->ASCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    return-object p1

    .line 83
    :cond_1
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->DESCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    return-object p1
.end method

.method public final orderValue2id(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 89
    sget p1, Lcom/metamoji/noteanytime/R$id;->radioOrderAsc:I

    return p1

    .line 87
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 88
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->radioOrderDesc:I

    return p1
.end method
