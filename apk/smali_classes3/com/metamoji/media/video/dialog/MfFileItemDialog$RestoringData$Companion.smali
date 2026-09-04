.class public final Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData$Companion;
.super Ljava/lang/Object;
.source "MfFileItemDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;",
        "sis",
        "Landroid/os/Bundle;",
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

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/os/Bundle;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;
    .locals 6

    const-string/jumbo v0, "sis"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    const-string/jumbo v0, "sis-playing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 548
    const-string/jumbo v1, "sis-seek-position"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    if-nez v0, :cond_0

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 552
    :cond_0
    new-instance p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;

    invoke-direct {p1, v0, v4, v5}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;-><init>(ZJ)V

    return-object p1
.end method
