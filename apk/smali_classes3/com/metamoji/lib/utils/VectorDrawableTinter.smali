.class public final Lcom/metamoji/lib/utils/VectorDrawableTinter;
.super Ljava/lang/Object;
.source "VectorDrawableTinter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0011J\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/VectorDrawableTinter;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "tintMode",
        "Landroid/graphics/PorterDuff$Mode;",
        "getTintMode",
        "()Landroid/graphics/PorterDuff$Mode;",
        "setTintMode",
        "(Landroid/graphics/PorterDuff$Mode;)V",
        "tintDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "dr",
        "",
        "cr",
        "tintDrawableByRGB",
        "color",
        "Companion",
        "utils"
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
.field public static final Companion:Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private tintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->Companion:Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->context:Landroid/content/Context;

    .line 37
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->tintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public static final tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->Companion:Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final tintDrawable(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->Companion:Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;->tintDrawable(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->tintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->tintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public final tintDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/VectorDrawableTinter;->tintDrawableByRGB(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final tintDrawableByRGB(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->Companion:Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;

    iget-object v1, p0, Lcom/metamoji/lib/utils/VectorDrawableTinter;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/lib/utils/VectorDrawableTinter$Companion;->tintDrawable(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
