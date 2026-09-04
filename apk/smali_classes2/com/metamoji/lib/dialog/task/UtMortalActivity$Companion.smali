.class public final Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;
.super Ljava/lang/Object;
.source "UtMortalActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;",
        "",
        "<init>",
        "()V",
        "applyCurrentWindowInsetsToRootView",
        "",
        "rootView",
        "Landroid/view/View;",
        "targetSystemZone",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic applyCurrentWindowInsetsToRootView$default(Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;Landroid/view/View;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 198
    sget p2, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->NORMAL:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;->applyCurrentWindowInsetsToRootView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final applyCurrentWindowInsetsToRootView(Landroid/view/View;I)V
    .locals 3

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;

    invoke-virtual {v1, v0, p2}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->calcInsets(Landroidx/core/view/WindowInsetsCompat;I)Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 201
    iget v0, p2, Landroidx/core/graphics/Insets;->left:I

    iget v1, p2, Landroidx/core/graphics/Insets;->top:I

    iget v2, p2, Landroidx/core/graphics/Insets;->right:I

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
