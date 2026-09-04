.class public final Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;
.super Ljava/lang/Object;
.source "UtDialogConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialogConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemZone"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0010\u0010\u000c\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;",
        "",
        "<init>",
        "()V",
        "SYSTEM_BARS",
        "",
        "getSYSTEM_BARS",
        "()I",
        "IME",
        "getIME",
        "CUTOUT",
        "getCUTOUT",
        "NORMAL",
        "ALL",
        "calcInsets",
        "Landroidx/core/graphics/Insets;",
        "insets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "zones",
        "dialog"
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
.field public static final ALL:I

.field private static final CUTOUT:I

.field private static final IME:I

.field public static final INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;

.field public static final NORMAL:I

.field private static final SYSTEM_BARS:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;-><init>()V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;

    .line 38
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    sput v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->SYSTEM_BARS:I

    .line 39
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    sput v1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->IME:I

    .line 40
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v2

    sput v2, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->CUTOUT:I

    or-int v3, v0, v2

    .line 44
    sput v3, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->NORMAL:I

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    .line 46
    sput v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->ALL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calcInsets(Landroidx/core/view/WindowInsetsCompat;I)Landroidx/core/graphics/Insets;
    .locals 4

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    const-string v1, "NONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget v1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->SYSTEM_BARS:I

    and-int v2, p2, v1

    if-ne v2, v1, :cond_0

    .line 51
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :cond_0
    sget v1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->IME:I

    and-int v2, p2, v1

    const-string v3, "max(...)"

    if-ne v2, v1, :cond_1

    .line 54
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :cond_1
    sget v1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->CUTOUT:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_2

    .line 57
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final getCUTOUT()I
    .locals 1

    .line 40
    sget v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->CUTOUT:I

    return v0
.end method

.method public final getIME()I
    .locals 1

    .line 39
    sget v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->IME:I

    return v0
.end method

.method public final getSYSTEM_BARS()I
    .locals 1

    .line 38
    sget v0, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->SYSTEM_BARS:I

    return v0
.end method
