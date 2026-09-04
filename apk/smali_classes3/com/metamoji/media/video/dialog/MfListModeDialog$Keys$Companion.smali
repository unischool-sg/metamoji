.class public final Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion;
.super Ljava/lang/Object;
.source "MfListModeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion;",
        "",
        "<init>",
        "()V",
        "id2KeyValue",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "id",
        "",
        "keyValue2id",
        "key",
        "isDateKey",
        "",
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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final id2KeyValue(I)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 1

    .line 49
    sget v0, Lcom/metamoji/noteanytime/R$id;->radioKeyCreated:I

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->TIMESTAMP:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object p1

    .line 50
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->radioKeyRegist:I

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->REGISTDATE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object p1

    .line 51
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->radioKeyDuration:I

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->DURATION:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object p1

    .line 52
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->radioKeySize:I

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->SIZE:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object p1

    .line 53
    :cond_3
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->TIMESTAMP:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object p1
.end method

.method public final isDateKey(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)Z
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public final keyValue2id(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 63
    sget p1, Lcom/metamoji/noteanytime/R$id;->radioKeyCreated:I

    return p1

    .line 62
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->radioKeySize:I

    return p1

    .line 61
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->radioKeyDuration:I

    return p1

    .line 60
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$id;->radioKeyRegist:I

    return p1

    .line 59
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$id;->radioKeyCreated:I

    return p1
.end method
