.class public final synthetic Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Lcom/metamoji/lib/dialog/task/UtMortalActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroid/view/View;Lcom/metamoji/lib/dialog/task/UtMortalActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;->f$3:Lcom/metamoji/lib/dialog/task/UtMortalActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;->f$2:Landroid/view/View;

    iget-object v3, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;->f$3:Lcom/metamoji/lib/dialog/task/UtMortalActivity;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->setupWindowInsetsListener$lambda$5(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroid/view/View;Lcom/metamoji/lib/dialog/task/UtMortalActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
